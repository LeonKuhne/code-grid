export default class AsmReader {
  constructor(parser) {
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
    for (let line of asmText.split('\n')) {
      this.parser.read(line)
    }
  }
}