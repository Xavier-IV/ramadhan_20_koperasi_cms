import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["dropzone", "input", "previewGrid", "existingItem"]
  static values = {
    multiple: Boolean,
    accept: String,
    maxSize: { type: Number, default: 10 },
    activeClass: String,
    itemClass: String,
    imageClass: String,
    removeClass: String,
    removeIcon: String
  }

  connect() {
    this.files = new DataTransfer()
  }

  openPicker() {
    this.inputTarget.click()
  }

  handleFiles(event) {
    this.addFiles(event.target.files)
  }

  dragOver(event) {
    event.preventDefault()
    this.dropzoneTarget.classList.add(...this.activeClasses)
  }

  dragEnter(event) {
    event.preventDefault()
    this.dropzoneTarget.classList.add(...this.activeClasses)
  }

  dragLeave(event) {
    event.preventDefault()
    this.dropzoneTarget.classList.remove(...this.activeClasses)
  }

  drop(event) {
    event.preventDefault()
    this.dropzoneTarget.classList.remove(...this.activeClasses)
    this.addFiles(event.dataTransfer.files)
  }

  removeNew(event) {
    const item = event.currentTarget.closest("[data-preview-item]")
    const index = parseInt(item.dataset.previewIndex, 10)
    const dt = new DataTransfer()
    Array.from(this.files.files).forEach((file, i) => {
      if (i !== index) dt.items.add(file)
    })
    this.files = dt
    this.inputTarget.files = this.files.files
    item.remove()
    this.reindex()
  }

  removeExisting(event) {
    const item = event.currentTarget.closest("[data-image-upload-target='existingItem']")
    const hiddenInput = item.querySelector("input[type='hidden']")
    hiddenInput.disabled = false
    item.style.opacity = "0"
    item.style.transition = "opacity 200ms"
    setTimeout(() => item.remove(), 200)
  }

  // Private

  addFiles(fileList) {
    const maxBytes = this.maxSizeValue * 1024 * 1024

    Array.from(fileList).forEach((file) => {
      if (file.size > maxBytes) return
      if (!this.multipleValue) {
        this.files = new DataTransfer()
        this.clearNewPreviews()
      }
      this.files.items.add(file)
      this.showPreview(file, this.files.files.length - 1)
    })

    this.inputTarget.files = this.files.files
  }

  showPreview(file, index) {
    const reader = new FileReader()
    reader.onload = (e) => {
      const item = document.createElement("div")
      item.className = this.itemClassValue
      item.dataset.previewItem = ""
      item.dataset.previewIndex = index

      const img = document.createElement("img")
      img.src = e.target.result
      img.className = this.imageClassValue

      const btn = document.createElement("button")
      btn.type = "button"
      btn.className = this.removeClassValue
      btn.innerHTML = this.removeIconValue
      btn.setAttribute("data-action", "click->image-upload#removeNew")
      btn.setAttribute("aria-label", "Remove")

      item.appendChild(img)
      item.appendChild(btn)
      this.previewGridTarget.appendChild(item)
    }
    reader.readAsDataURL(file)
  }

  clearNewPreviews() {
    this.previewGridTarget.querySelectorAll("[data-preview-item]").forEach((el) => el.remove())
  }

  reindex() {
    this.previewGridTarget.querySelectorAll("[data-preview-item]").forEach((el, i) => {
      el.dataset.previewIndex = i
    })
  }

  get activeClasses() {
    return this.activeClassValue.split(" ").filter(Boolean)
  }
}
