locals {
  test = "${element(split(",", var.selected_environments))}"
}
