import Pattern from './pattern.js'

export default class AsmParser {

  constructor(patterns) {
    // patterns
    this.branch = this.branchPattern(patterns.branchPattern)
    this.instruct = this.instructPattern(patterns.instructPattern)
    //state
    this.branchName = null
    this.op = null
    this.args = null
  }

  load(line) {
    line = line.split(';')[0] // remove x86/x64 comments 
    line = line.split(' # ')[0] // remove arm/mips comments
    if (line.trim() == "") return // ignore empty lines
    if (this.branch.exec(line)) return // try to parse as branch
    if (this.instruct.exec(line)) return // try to parse as instruction
  }

  // 
  // patterns parsers

  branchPattern(regex) {
    return new Pattern(regex, match => { 
      this.branchName = match[1]
      return true
    })
  }

  instructPattern(regex) {
    return new Pattern(regex, match => { 
      this.op = match[1]; 
      this.args = match[2] 
      return true
    })
  }
}