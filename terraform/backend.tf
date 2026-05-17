terraform {
  backend "azurerm" {
    resource_group_name  = "rg-shared"
    storage_account_name = "terraformprueba1"
    container_name       = "tfstate"
    key                  = "global.tfstate"
  }
}