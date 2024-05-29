export default class Pattern {
  constructor(regex, onMatch) {
    this.regex = new RegExp(regex)
    this.onMatch = onMatch
  }

  exec(line) {
    const match = this.eval(line)
    if (!match) return false
    return this.onMatch(match)
  }

  eval(line) { 
    return line.match(this.regex)
  }
}