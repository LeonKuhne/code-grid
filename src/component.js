export default class Component extends HTMLElement {
  constructor() {
    super();
  }

  connectedCallback() {
    this.onStyle()
    this.onConnect()
  }
}