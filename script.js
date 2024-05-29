import AsmGrid from "./src/asm-grid.js"
import AsmCell from "./src/asm-cell.js"
import AsmReader from "./src/asm-reader.js"

customElements.define('asm-grid', AsmGrid)
customElements.define('asm-cell', AsmCell)

const reader = new AsmReader()

// a pathfinding alogorithm that finds the min cell size while being connected
document.addEventListener('DOMContentLoaded', () => {
  console.log("dom loaded")
  // open the local asm file 'helloworld.asm'
  reader.dispatchUrlUpload('helloworld.asm')
})