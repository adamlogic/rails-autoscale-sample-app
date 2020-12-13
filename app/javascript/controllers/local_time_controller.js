import { Controller } from "stimulus"

export default class extends Controller {
  connect() {
    const time = new Date(this.element.innerText)
    this.element.innerText = time.toLocaleTimeString()
  }
}
