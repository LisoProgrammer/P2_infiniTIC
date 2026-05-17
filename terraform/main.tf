provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "rg" {
  name     = "rg-${terraform.workspace}"
  location = "East US"
}

module "app" {
  source = "./modules/app_service"

  env      = terraform.workspace
  location = "East US"
  rg_name  = azurerm_resource_group.rg.name
  sku_name = "F1"
}