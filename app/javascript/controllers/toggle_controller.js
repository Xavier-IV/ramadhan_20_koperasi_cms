import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["checkbox", "track", "thumb"]

  connect() {
    this.sync()
  }

  toggle() {
    if (this.checkboxTarget.disabled) return
    this.checkboxTarget.checked = !this.checkboxTarget.checked
    this.sync()
  }

  sync() {
    const checked = this.checkboxTarget.checked

    // Update aria
    this.trackTarget.setAttribute("aria-checked", checked)

    // Update track classes
    if (checked) {
      this.trackTarget.classList.remove(...this.offTrackClasses())
      this.trackTarget.classList.add(...this.onTrackClasses())
    } else {
      this.trackTarget.classList.remove(...this.onTrackClasses())
      this.trackTarget.classList.add(...this.offTrackClasses())
    }

    // Update thumb classes
    if (checked) {
      this.thumbTarget.classList.remove(...this.offThumbClasses())
      this.thumbTarget.classList.add(...this.onThumbClasses())
    } else {
      this.thumbTarget.classList.remove(...this.onThumbClasses())
      this.thumbTarget.classList.add(...this.offThumbClasses())
    }
  }

  onTrackClasses() {
    return this.trackTarget.dataset.onClass ? this.trackTarget.dataset.onClass.split(" ") : []
  }

  offTrackClasses() {
    return this.trackTarget.dataset.offClass ? this.trackTarget.dataset.offClass.split(" ") : []
  }

  onThumbClasses() {
    return this.thumbTarget.dataset.onClass ? this.thumbTarget.dataset.onClass.split(" ") : []
  }

  offThumbClasses() {
    return this.thumbTarget.dataset.offClass ? this.thumbTarget.dataset.offClass.split(" ") : []
  }
}
