provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "rg" {
  name     = "rg-${local.env}"
  location = "East US"
}

module "app" {
  source   = "./modules/app_service"
  env      = local.env
  sku_name = local.config[local.env].sku
  rg_name  = azurerm_resource_group.rg.name
  location = "East US"
}