provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "rg" {
  name     = "rg-${var.env}"
  location = var.location

  tags = {
    Environment = var.env
    Project     = "multi-env"
    Owner       = "liso"
  }
}

module "app" {
  source   = "../../modules/app_service"
  env      = var.env
  location = var.location
  rg_name  = azurerm_resource_group.rg.name
}