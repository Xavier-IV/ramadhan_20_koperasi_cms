import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static values = { multiple: Boolean }
  static targets = ["item"]

  toggle(event) {
    const button = event.currentTarget
    const item = button.closest("[data-accordion-target='item']")
    const content = item.querySelector("[id]")
    const icon = button.querySelector("svg")
    const isExpanded = button.getAttribute("aria-expanded") === "true"

    if (!this.multipleValue && !isExpanded) {
      this.closeAll()
    }

    if (isExpanded) {
      button.setAttribute("aria-expanded", "false")
      content.classList.add("hidden")
      if (icon) icon.classList.remove("rotate-180")
    } else {
      button.setAttribute("aria-expanded", "true")
      content.classList.remove("hidden")
      if (icon) icon.classList.add("rotate-180")
    }
  }

  closeAll() {
    this.itemTargets.forEach(item => {
      const button = item.querySelector("button")
      const content = item.querySelector("[id]")
      const icon = button.querySelector("svg")
      button.setAttribute("aria-expanded", "false")
      content.classList.add("hidden")
      if (icon) icon.classList.remove("rotate-180")
    })
  }
}
