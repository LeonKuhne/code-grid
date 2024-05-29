export default class AsmCell extends HTMLElement {
  constructor() {
    super();

    this.config = {
      'mov': { color: 'orange' }
    }
  }

  connectedCallback() {
    console.log("cell connected")
    this.style.userSelect = 'none'
    // asm properties
    this.op = this.innerText
    this.next = []
    // map x,y,w,h attributes to grid style
    this.style.gridColumn = `${parseInt(this.getAttribute('x')) + 1} / span ${this.getAttribute('w')}`
    this.style.gridRow = `${parseInt(this.getAttribute('y')) + 1} / span ${this.getAttribute('h')}`
    // color it based on the text it contains
    this.applyConfig()
  }

  applyConfig() {
    if (!(this.op in this.config)) return
    this.style.background = this.config[this.op].color
  }
}