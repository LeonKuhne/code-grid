export default class Reader {
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

  read(text) {
    for (let line of text.split('\n')) {
      this.parser.read(line)
    }
  }
}