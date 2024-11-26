resource "azurerm_virtual_machine" "vm-devlab03" {
  count                 = var.vm_count
  name                  = "${var.vm_name}-${count.index + 1}"
  resource_group_name   = azurerm_resource_group.rg-devlab03.name
  location              = azurerm_resource_group.rg-devlab03.location
  network_interface_ids = [azurerm_network_interface.nic-devlab03[count.index].id]
  vm_size               = var.sku_size

  storage_image_reference {
    publisher = "Canonical"
    offer     = "0001-com-ubuntu-server-jammy"
    sku       = "22_04-lts"
    version   = "latest"
  }
  storage_os_disk {
    name              = "myosdisk-${count.index + 1}"
    caching           = "ReadWrite"
    create_option     = "FromImage"
    managed_disk_type = "Standard_LRS"
  }

  os_profile {
    computer_name  = "linux-${count.index + 1}"
    admin_username = "adminuser"
    admin_password = data.azurerm_key_vault_secret.kv-devlab03-secret.value
  }
  os_profile_linux_config {
    disable_password_authentication = false
  }
}