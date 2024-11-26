output "all_public_ips" {
  value = azurerm_public_ip.pip-devlab03[*].ip_address
}