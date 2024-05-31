import Pos from './pos.js'
import AsmCell from './asm-cell.js'

export default class AsmGrid extends HTMLElement {
  constructor() {
    super();
    this.pos = new Pos(0, 0)
    this.taken = {}
  }

  connectedCallback() {
    console.log("grid connected")
    this.gridSize = this.intArg('grid-size')
    this.style()
    this.pan()
    this.zoom()
  }


  //
  // setup

  style() {
    const cellWidth = this.intArg('cell-width')
    const cellHeight = this.intArg('cell-height')
    const style = document.createElement('style')
    style.textContent = `:host {
      display: grid;
      grid-template-columns: repeat(${this.gridSize}, ${cellWidth}rem);
      grid-template-rows: repeat(${this.gridSize}, ${cellHeight}rem);
      position: absolute;
      transform: translate(-50%, -50%);
    }`
    this.parentElement.style.overflow = 'hidden'
    this.attachShadow({ mode: 'open' })
    this.shadowRoot.appendChild(style)
  }

  pan() {
    let mouseStart
    let elemStart
    document.addEventListener('mousedown', e => {
      mouseStart = { x: e.clientX, y: e.clientY }
      elemStart = { x: this.offsetLeft, y: this.offsetTop }
    })
    document.addEventListener('mouseup', _ => mouseStart = undefined)
    document.addEventListener('mouseleave', _ => mouseStart = undefined)
    document.addEventListener('mousemove', e => {
      if (!mouseStart) return
      const mouseDelta = { x: e.clientX - mouseStart.x, y: e.clientY - mouseStart.y }
      let pos = { x: elemStart.x + mouseDelta.x, y: elemStart.y + mouseDelta.y }
      // update pos
      this.style.left = `${pos.x}px`
      this.style.top = `${pos.y}px`
    })

  }

  zoom() {
    let zoom = 1
    document.addEventListener('wheel', e => {
      zoom += e.deltaY * -0.001
      zoom = Math.min(Math.max(.125, zoom), 4)
      this.style.transform = `translate(-50%, -50%) scale(${zoom})`
    })
  }


  //
  // actions

  addNext(instruction) {
    const size = new Pos(1, 1)
    this.stepPos()
    // add to grid
    this.taken[this.pos.key()] = true
    // add to view
    const cell = AsmCell.create(instruction.op, instruction.args, this.pos, size)
    this.appendChild(cell)
  }

  stepPos() { // find the next available cell
    const next = this.freeNeighbors(this.pos)
    if (next.length) { this.pos = next[0]; return }
    this.gridSize += 1
    this.stepPos()
  }


  // 
  // helpers

  freeNeighbors(pos) {
    let neighbors = this.neighbors(pos)
    return neighbors.filter(pos => {
      // keep in bounds
      if (pos.x < 0 || pos.y < 0) return false
      if (pos.x >= this.gridSize || pos.y >= this.gridSize) return false
      return !(pos.key() in this.taken)
    })
  }

  neighbors(pos) {
    return [
      new Pos(pos.x + 1, pos.y),
      new Pos(pos.x - 1, pos.y),
      new Pos(pos.x, pos.y + 1),
      new Pos(pos.x, pos.y - 1)
    ]
  }
}