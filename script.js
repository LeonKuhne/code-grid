import AsmGrid from "./src/asm-grid.js"
import AsmCell from "./src/asm-cell.js"
import AsmParser from "./src/asm-parser.js"
import Reader from "./src/reader.js"


//
// config

// ELF64_X86_64
const asmParser = new AsmParser({
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
const reader = new Reader(asmParser)


// 
// start

document.addEventListener('DOMContentLoaded', () => {
  const grid = document.querySelector('asm-grid')

  // read config
  document.getElementById('x-dim').addEventListener('input', e => {
    grid.setAttribute('grid-width', e.target.value)
    grid.resize()
  })
  document.getElementById('y-dim').addEventListener('input', e => {
    grid.setAttribute('grid-height', e.target.value)
    grid.resize()
  })
  document.getElementById('x-dim').dispatchEvent(new Event('input'))
  document.getElementById('y-dim').dispatchEvent(new Event('input'))


  // assemble grid
  asmParser.hooks.onInstruction = instruction => grid.addNext(instruction)
  reader.dispatchUrlUpload('helloworld.s')
})