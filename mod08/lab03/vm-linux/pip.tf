resource "azurerm_public_ip" "pip-devlab03" {
  count               = var.vm_count
  name                = "${var.pip_name}-${count.index + 1}"
  resource_group_name = azurerm_resource_group.rg-devlab03.name
  location            = azurerm_resource_group.rg-devlab03.location
  allocation_method   = "Static"
}