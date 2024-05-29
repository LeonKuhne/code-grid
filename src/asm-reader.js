import AsmParser from './asm-parser.js'

export default class AsmReader {

  ASM_PARSER = {
    ELF64_X86_64: new AsmParser({
      branchPattern: '^(.*?):',
      instructPattern: '^\s*([a-zA-Z]+)\s+(.*)'
    })
  }

  constructor(parser=this.ASM_PARSER.ELF64_X86_64) {
    this.parser = parser
  }

  dispatchFileUpload(file) {
    throw new Error("Not implemented")
    content = "" // TODO get content from file
    this.read(content)
  }

  dispatchUrlUpload(url) {
    fetch(url)
      .then(response => response.text())
      .then(text => {
        this.read(text)
      })
  }

  read(asmText) {
    // walk line by line through the asm code
    for (let line of asmText.split('\n')) {
      this.parser.load(line)

      // todo use the parsers state  

      // it would be useful to draw branches as a cointainer with its instructions inside
      // but since branches are just jumps to other lines they doent NEED to be represented, and this would be easier
    }
  }
}