import { Controller } from "@hotwired/stimulus";

export default class extends Controller {
  static targets = ["existing", "new", "radio"];

  connect() {
    // Set initial state based on checked radio button
    this.toggleFields(this.radioTargets.find((radio) => radio.checked).value);
  }

  toggle(event) {
    this.toggleFields(event.target.value);
  }

  toggleFields(value) {
    if (value === "existing") {
      this.existingTarget.style.display = "block";
      this.newTarget.style.display = "none";
    } else {
      this.existingTarget.style.display = "none";
      this.newTarget.style.display = "block";
    }
  }
}
