resource "azurerm_resource_group" "rg-devlab03" {
  name     = var.rg_name
  location = var.location
}