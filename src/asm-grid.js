import Pos from './pos.js'
import AsmCell from './asm-cell.js'
import Component from './component.js';

export default class AsmGrid extends Component {
  constructor() {
    super();
    this.pos = new Pos(0, 0)
    this.taken = {}
  }

  resize(width=null, height=null) {
    if (width != null) this.setAttribute('grid-width', width)
    if (height != null) this.setAttribute('grid-height', height)
    this._resize()
  }

  onStyle() {
    this.style.display = 'grid'
    this.style.position = 'absolute'
    this.style.transform = 'translate(-50%, -50%)'
    this._resize(this.intArg("grid-width"), this.intArg("grid-height"))
  }

  onConnect() {
    console.log("grid connected")
    this.pan()
    this.zoom()
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
    const next = this._freeNeighbors(this.pos)
    if (next.length) { this.pos = next[0]; return }
    this.resize(this.width+1, this.height+1)
    this.stepPos()
  }


  // 
  // helpers

  _freeNeighbors(pos) {
    let neighbors = this._neighbors(pos)
    return neighbors.filter(pos => {
      // keep in bounds
      if (pos.x < 0 || pos.y < 0) return false
      if (pos.x >= this.width || pos.y >= this.height ) return false
      return !(pos.key() in this.taken)
    })
  }

  _neighbors(pos) {
    return [
      new Pos(pos.x + 1, pos.y),
      new Pos(pos.x - 1, pos.y),
      new Pos(pos.x, pos.y + 1),
      new Pos(pos.x, pos.y - 1)
    ]
  }

  _resize() {
    this.width = this.intArg('grid-width')
    this.height = this.intArg('grid-height')
    this.style.gridTemplateColumns = `repeat(${this.width}, ${this.intArg('cell-width')}rem)`
    this.style.gridTemplateRows = `repeat(${this.height}, ${this.intArg('cell-height')}rem)`
  }
}