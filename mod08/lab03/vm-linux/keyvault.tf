data "azurerm_key_vault" "kv-devlab03" {
  name                = "kvdevlab01"
  resource_group_name = "rg-kv-devlab01"
}

data "azurerm_key_vault_secret" "kv-devlab03-secret" {
  name         = "vmwindows"
  key_vault_id = data.azurerm_key_vault.kv-devlab03.id
}