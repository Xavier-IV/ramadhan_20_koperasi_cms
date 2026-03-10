import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["dialog"]

  open() {
    this.element.classList.remove("hidden")
    document.body.classList.add("overflow-hidden")
  }

  close() {
    this.element.classList.add("hidden")
    document.body.classList.remove("overflow-hidden")
  }

  closeOnOverlay(event) {
    if (event.target === event.currentTarget) {
      this.close()
    }
  }
}
