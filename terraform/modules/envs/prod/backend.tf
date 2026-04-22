terraform {
  backend "azurerm" {
    resource_group_name  = "rg-shared"
    storage_account_name = "stterraform123" # CAMBIAR
    container_name       = "tfstate"
    key                  = "prod.terraform.tfstate"
  }
}