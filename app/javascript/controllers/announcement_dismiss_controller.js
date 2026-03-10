import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static values = { id: Number }

  connect() {
    if (this.dismissed) this.element.remove()
  }

  close() {
    this.element.style.opacity = "0"
    this.element.style.transition = "opacity 200ms"
    setTimeout(() => {
      this.element.remove()
      this.addToDismissed()
    }, 200)
  }

  // Private

  get dismissed() {
    return this.dismissedIds.includes(this.idValue)
  }

  get dismissedIds() {
    try {
      return JSON.parse(this.cookie || "[]")
    } catch {
      return []
    }
  }

  get cookie() {
    const match = document.cookie.match(/dismissed_announcements=([^;]+)/)
    return match ? decodeURIComponent(match[1]) : null
  }

  addToDismissed() {
    const ids = [...this.dismissedIds, this.idValue]
    const expires = new Date(Date.now() + 30 * 24 * 60 * 60 * 1000).toUTCString()
    document.cookie = `dismissed_announcements=${encodeURIComponent(JSON.stringify(ids))}; expires=${expires}; path=/; SameSite=Lax`
  }
}
