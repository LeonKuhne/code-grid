export default class AsmCell extends HTMLElement {
  constructor() {
    super();

    this.config = {
      'mov': { color: 'orange' }
    }
  }

  connectedCallback() {
    console.log("cell connected")
    const style = document.createElement('style')
    style.textContent = `:host {
      user-select: none;
    }`
    this.attachShadow({ mode: 'open' })
    this.shadowRoot.appendChild(style)
    // asm properties
    this.op = this.innerText
    this.next = []
    // map x,y,w,h attributes to grid style
    this.move()
    this.scale()
    // color it based on the text it contains
    this.applyConfig()
  }


  //
  // actions

  applyConfig() {
    if (!(this.op in this.config)) return
    this.style.background = this.config[this.op].color
  }

  move() {
    this.style.gridColumn = `${this.intArg('x') + 1} / span ${this.intArg('w')}`
    this.style.gridRow = `${this.intArg('y') + 1} / span ${this.intArg('h')}`
  }

  moveTo(pos) {
    this.setAttribute('x', pos.x) 
    this.setAttribute('y', pos.y)
    this.move()
  }

  scale() {
    this.style.width = `${this.intArg('w') * this.parentElement.intArg('cell-width')}rem`
    this.style.height = `${this.intArg('h') * this.parentElement.intArg('cell-height')}rem`
  }

  scaleTo(size) {
    this.setAttribute('w', size.x) 
    this.setAttribute('h', size.y)
  }


  //
  // global

  static create(op, args, pos, size) {
    const cell = document.createElement('asm-cell')
    cell.innerText = op
    cell.moveTo(pos)
    cell.scaleTo(size)
    cell.setAttribute('args', args)
    return cell
  }
}