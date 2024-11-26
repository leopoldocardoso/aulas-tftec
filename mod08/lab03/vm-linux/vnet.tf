resource "azurerm_virtual_network" "vnet-devlab03" {
  name                = var.vnet_name
  address_space       = var.vnet_cidr
  resource_group_name = azurerm_resource_group.rg-devlab03.name
  location            = azurerm_resource_group.rg-devlab03.location
}

resource "azurerm_subnet" "snet-devlab03" {
  for_each             = toset(var.snet_name)
  name                 = each.key
  resource_group_name  = azurerm_resource_group.rg-devlab03.name
  virtual_network_name = azurerm_virtual_network.vnet-devlab03.name
  address_prefixes     = ["10.0.${(each.value == "snet-devlab03-1") ? 1 : 2}.0/24"]
}