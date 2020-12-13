import { Controller } from "stimulus"

export default class extends Controller {
  static targets = ["container"]

  connect() {
    this.element.addEventListener("ajax:success", (event) => {
      const [_data, _status, xhr] = event.detail
      this.containerTarget.insertAdjacentHTML("beforeend", xhr.responseText)
    })
    // this.element.addEventListener("ajax:error", () => {
    //   // element.insertAdjacentHTML("beforeend", "<p>ERROR</p>")
    // })
  }
}
