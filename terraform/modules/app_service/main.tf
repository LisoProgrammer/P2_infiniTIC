resource "azurerm_storage_account" "appstorage" {
  name                     = "st${var.env}${random_string.suffix.result}"
  resource_group_name      = var.rg_name
  location                 = var.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
}

resource "random_string" "suffix" {
  length  = 5
  special = false
  upper   = false
}