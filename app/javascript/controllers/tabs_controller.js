import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["tab", "panel"]

  connect() {
    const activeTab = this.tabTargets.find(tab => tab.getAttribute("aria-selected") === "true")
    if (activeTab) {
      this.activate(activeTab)
    } else if (this.tabTargets.length > 0) {
      this.activate(this.tabTargets[0])
    }
  }

  select(event) {
    this.activate(event.currentTarget)
  }

  activate(selectedTab) {
    const tabId = selectedTab.dataset.tabId

    this.tabTargets.forEach(tab => {
      const isSelected = tab === selectedTab
      tab.setAttribute("aria-selected", isSelected)
      // Swap between active and inactive class sets
      const activeClasses = this.activeClasses()
      const inactiveClasses = this.inactiveClasses()
      if (isSelected) {
        tab.className = activeClasses
      } else {
        tab.className = inactiveClasses
      }
    })

    this.panelTargets.forEach(panel => {
      if (panel.dataset.tabId === tabId) {
        panel.hidden = false
      } else {
        panel.hidden = true
      }
    })
  }

  activeClasses() {
    const activeTab = this.tabTargets.find(t => t.getAttribute("aria-selected") === "true")
    // Store original classes on first connect
    if (!this._activeClasses) {
      this._activeClasses = activeTab ? activeTab.className : ""
    }
    return this._activeClasses
  }

  inactiveClasses() {
    const inactiveTab = this.tabTargets.find(t => t.getAttribute("aria-selected") !== "true")
    if (!this._inactiveClasses) {
      this._inactiveClasses = inactiveTab ? inactiveTab.className : ""
    }
    return this._inactiveClasses
  }
}
