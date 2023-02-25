import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="listcard"
export default class extends Controller {
  static targets = ["title"]
  connect() {
    console.log("hello");
  }

  arrow() {
    this.titleTarget.insertAdjacentHTML("beforeend", "<i class='ps-2 fa-solid fa-arrow-right-long'></i>");
    console.log("arrow");
  }

  noarrow() {
    this.titleTarget.innerHTML = ""
    console.log("no arrow");
  }
}
