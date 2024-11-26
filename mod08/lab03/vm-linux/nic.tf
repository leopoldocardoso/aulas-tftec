resource "azurerm_network_interface" "nic-devlab03" {
  count               = var.vm_count
  name                = "${var.nic_name}-${count.index + 1}"
  resource_group_name = azurerm_resource_group.rg-devlab03.name
  location            = azurerm_resource_group.rg-devlab03.location

  ip_configuration {
    name                          = "public-${count.index + 1}"
    subnet_id                     = azurerm_subnet.snet-devlab03[var.snet_name[count.index]].id
    private_ip_address_allocation = "Dynamic"
    public_ip_address_id          = azurerm_public_ip.pip-devlab03[count.index].id
  }
}