export default class Pos {
  constructor(x, y) {
    this.x = x
    this.y = y
  }

  add(pos) {
    this.x += pos.x
    this.y += pos.y
  }

  key() {
    return `${this.x}, ${this.y}`
  }
}