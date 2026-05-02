resource "azurerm_service_plan" "plan" {
  name                = "plan-${var.env}"
  location            = var.location
  resource_group_name = var.rg_name

  os_type  = "Linux"
  sku_name = var.sku_name
}

resource "azurerm_linux_web_app" "app" {
  name                = "app-${var.env}-${random_string.suffix.result}"
  location            = var.location
  resource_group_name = var.rg_name
  service_plan_id     = azurerm_service_plan.plan.id

  site_config {}
}

resource "random_string" "suffix" {
  length  = 5
  special = false
}