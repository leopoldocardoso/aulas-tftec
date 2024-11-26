terraform {
  backend "azurerm" {
    resource_group_name  = "rg-iac-terraform"
    storage_account_name = "stiacterraformstate"
    container_name       = "aulas-terraform"
    key                  = "mod08-lab03-terraform.tfstate"
   
  }
}
