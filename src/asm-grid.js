
export default class AsmGrid extends HTMLElement {
  constructor() {
    super();
  }

  connectedCallback() {
    console.log("grid connected")
    this.style.display = 'grid'
    const gridSize = this.getAttribute('grid-size')
    const cellWidth = this.getAttribute('cell-width')
    const cellHeight = this.getAttribute('cell-height')
    this.style.gridTemplateColumns = `repeat(${gridSize}, ${cellWidth})`
    this.style.gridTemplateRows = `repeat(${gridSize}, ${cellHeight})`
    this.style.position = 'absolute'
    this.style.transform = 'translate(-50%, -50%)'
    this.parentElement.style.overflow = 'hidden'

    // pan grid
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

    // zoom grid
    let zoom = 1
    document.addEventListener('wheel', e => {
      zoom += e.deltaY * -0.001
      zoom = Math.min(Math.max(.125, zoom), 4)
      this.style.transform = `translate(-50%, -50%) scale(${zoom})`
    })
  }
}
