import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static values = { position: { type: String, default: "top" } }
  static targets = ["content", "arrow"]

  show() {
    this.contentTarget.classList.remove("hidden")
    this.position()
  }

  hide() {
    this.contentTarget.classList.add("hidden")
  }

  position() {
    const tooltip = this.contentTarget
    const trigger = this.element
    const arrow = this.hasArrowTarget ? this.arrowTarget : null

    // Reset position for measurement
    tooltip.style.top = ""
    tooltip.style.left = ""
    tooltip.style.right = ""
    tooltip.style.bottom = ""

    const triggerRect = trigger.getBoundingClientRect()
    const tooltipRect = tooltip.getBoundingClientRect()
    const gap = 8

    switch (this.positionValue) {
      case "top":
        tooltip.style.bottom = "100%"
        tooltip.style.left = "50%"
        tooltip.style.transform = "translateX(-50%)"
        tooltip.style.marginBottom = `${gap}px`
        if (arrow) {
          arrow.style.bottom = "-4px"
          arrow.style.left = "50%"
          arrow.style.transform = "translateX(-50%) rotate(45deg)"
        }
        break
      case "bottom":
        tooltip.style.top = "100%"
        tooltip.style.left = "50%"
        tooltip.style.transform = "translateX(-50%)"
        tooltip.style.marginTop = `${gap}px`
        if (arrow) {
          arrow.style.top = "-4px"
          arrow.style.left = "50%"
          arrow.style.transform = "translateX(-50%) rotate(45deg)"
        }
        break
      case "left":
        tooltip.style.right = "100%"
        tooltip.style.top = "50%"
        tooltip.style.transform = "translateY(-50%)"
        tooltip.style.marginRight = `${gap}px`
        if (arrow) {
          arrow.style.right = "-4px"
          arrow.style.top = "50%"
          arrow.style.transform = "translateY(-50%) rotate(45deg)"
        }
        break
      case "right":
        tooltip.style.left = "100%"
        tooltip.style.top = "50%"
        tooltip.style.transform = "translateY(-50%)"
        tooltip.style.marginLeft = `${gap}px`
        if (arrow) {
          arrow.style.left = "-4px"
          arrow.style.top = "50%"
          arrow.style.transform = "translateY(-50%) rotate(45deg)"
        }
        break
    }
  }
}
