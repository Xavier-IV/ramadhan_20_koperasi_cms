import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static values = { auto: Boolean, duration: { type: Number, default: 5000 } }
  static targets = ["progress"]

  connect() {
    if (this.autoValue) {
      this.startCountdown()
    }
  }

  disconnect() {
    if (this.timer) clearTimeout(this.timer)
    if (this.animationFrame) cancelAnimationFrame(this.animationFrame)
  }

  startCountdown() {
    if (this.hasProgressTarget) {
      this.startTime = Date.now()
      this.animateProgress()
    }
    this.timer = setTimeout(() => this.close(), this.durationValue)
  }

  animateProgress() {
    const elapsed = Date.now() - this.startTime
    const remaining = Math.max(0, 1 - elapsed / this.durationValue)
    if (this.hasProgressTarget) {
      this.progressTarget.style.width = `${remaining * 100}%`
    }
    if (remaining > 0) {
      this.animationFrame = requestAnimationFrame(() => this.animateProgress())
    }
  }

  close() {
    if (this.timer) clearTimeout(this.timer)
    if (this.animationFrame) cancelAnimationFrame(this.animationFrame)
    this.element.classList.add("opacity-0", "transition-opacity")
    this.element.addEventListener("transitionend", () => {
      this.element.remove()
    }, { once: true })
    // Fallback removal if transitionend doesn't fire
    setTimeout(() => {
      if (this.element.parentNode) this.element.remove()
    }, 300)
  }
}
