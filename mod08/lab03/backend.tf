terraform {
  backend "azurerm" {
    resource_group_name  = "rg-iac-terraform"
    storage_account_name = "stiacterraformstate"
    container_name       = "aulas-terraform"
    key                  = "mod08-lab03-terraform.tfstate"
    access_key           = "YrdzxV2sZi+smc8zKYNVusZrDsX4DsiA6ViE8ckSeQxRUXcsOgUwd27pu5+j2ibBbwKZsMxe/P6a+AStioIcNA=="
  }
}
