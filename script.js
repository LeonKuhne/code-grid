import AsmGrid from "./src/asm-grid.js"
import AsmCell from "./src/asm-cell.js"
import AsmReader from "./src/asm-reader.js"
import AsmParser from "./src/asm-parser.js"


//
// config

const ELF64_X86_64 = new AsmParser({
  sectionPattern: /^.*(\..*):$/, // match: name
  branchPattern: /^0*([0-9a-zA-Z]*)\s<(.*)>:$/, // match: lineNumber, name
  instructPattern: /^\s*(.*):\t.*\t(.*)/,  // match: lineNumber, op, args
}, {
  onSection: name => console.log("section", name), 
  onBranch: name => console.log("branch", name),
  onInstruction: _ => {}
})


// 
// setup

HTMLElement.prototype.intArg = function(name) { 
  return parseInt(this.getAttribute(name)) 
}
customElements.define('asm-grid', AsmGrid)
customElements.define('asm-cell', AsmCell)
const reader = new AsmReader(ELF64_X86_64)


// 
// start

document.addEventListener('DOMContentLoaded', () => {
  const grid = document.querySelector('asm-grid')
  ELF64_X86_64.hooks.onInstruction = instruction => {
    grid.addNext(instruction)
  }

  // open the local asm file 'helloworld.asm'
  reader.dispatchUrlUpload('helloworld.asm')
})