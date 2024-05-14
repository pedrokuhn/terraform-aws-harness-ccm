locals {
  test = ${split( ",", ${var.selected_environments})}
}
