import Pattern from './pattern.js'

export default class AsmParser {

  constructor(patterns, hooks) {
    // patterns
    this.sectionPattern = this.createSectionPattern(patterns.sectionPattern)
    this.branchPattern = this.createBranchPattern(patterns.branchPattern)
    this.instructPattern = this.createInstructPattern(patterns.instructPattern)
    // callbacks
    this.hooks = hooks
    //state
    this.section = null
    this.branch = null
    this.instruction = null
  }

  read(line) {
    line = line.split(';')[0] // remove x86/x64 comments 
    line = line.split(' # ')[0] // remove arm/mips comments
    if (line.trim() == "") return // ignore empty lines
    // try to parse section
    if (this.sectionPattern.exec(line))
      return this.hooks.onSection(this.section)
    // try to parse branch
    if (this.branchPattern.exec(line))
      return this.hooks.onBranch(this.branch)
    // try to parse instruction
    if (this.instructPattern.exec(line)) 
      return this.hooks.onInstruction(this.instruction)
    console.log("UNKOWN LINE:", line)
  }

  // 
  // patterns parsers

  createSectionPattern(regex) {
    return new Pattern(regex, match => { 
      this.section = match[1]
      return true
    })
  }

  createBranchPattern(regex) {
    return new Pattern(regex, match => { 
      this.branch = {
        lineNumber: parseInt(match[1]),
        name: match[2]
      }
      return true
    })
  }

  createInstructPattern(regex) {
    return new Pattern(regex, match => { 
      this.instruction = {
        lineNumber: parseInt(match[1]),
        op: match[2],
        args: match[3]
      }
      return true
    })
  }
}