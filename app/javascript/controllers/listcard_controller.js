import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="listcard"
export default class extends Controller {
  static targets = ["title"]
  connect() {
  }

  arrow() {
    this.titleTarget.insertAdjacentHTML("beforeend", "<i class='ps-2 fa-solid fa-arrow-right-long'></i>");
  }

  noarrow() {
    this.titleTarget.innerHTML = ""
  }
}
