import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["icon"]

  connect() {
    this.sync()
  }

  toggle() {
    const isDark = document.documentElement.classList.toggle("dark")
    localStorage.setItem("darkMode", isDark)
    this.updateIcon(isDark)
  }

  // Private

  sync() {
    const isDark = localStorage.getItem("darkMode") === "true"
    if (isDark) {
      document.documentElement.classList.add("dark")
    }
    this.updateIcon(isDark)
  }

  updateIcon(isDark) {
    if (!this.hasIconTarget) return
    // Sun icon for dark mode (click to go light), Moon icon for light mode (click to go dark)
    this.iconTarget.innerHTML = isDark ? this.sunSvg : this.moonSvg
  }

  get sunSvg() {
    return '<svg class="w-4 h-4" fill="none" stroke="currentColor" stroke-width="1.5" viewBox="0 0 24 24"><path stroke-linecap="round" stroke-linejoin="round" d="M12 3v2.25m6.364.386-1.591 1.591M21 12h-2.25m-.386 6.364-1.591-1.591M12 18.75V21m-4.773-4.227-1.591 1.591M5.25 12H3m4.227-4.773L5.636 5.636M15.75 12a3.75 3.75 0 1 1-7.5 0 3.75 3.75 0 0 1 7.5 0Z"/></svg>'
  }

  get moonSvg() {
    return '<svg class="w-4 h-4" fill="none" stroke="currentColor" stroke-width="1.5" viewBox="0 0 24 24"><path stroke-linecap="round" stroke-linejoin="round" d="M21.752 15.002A9.72 9.72 0 0 1 18 15.75c-5.385 0-9.75-4.365-9.75-9.75 0-1.33.266-2.597.748-3.752A9.753 9.753 0 0 0 3 11.25C3 16.635 7.365 21 12.75 21a9.753 9.753 0 0 0 9.002-5.998Z"/></svg>'
  }
}
