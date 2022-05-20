resource "azurerm_app_service_plan" "web" {
  name                = "${local.basename}_web_service_plan"
  location            = azurerm_resource_group.application.location
  resource_group_name = azurerm_resource_group.application.name

  sku {
    tier = "Standard"
    size = "S1"
  }
}

resource "azurerm_app_service" "app" {
  name                       = "${local.basename}app"
  location                   = azurerm_resource_group.application.location
  resource_group_name        = azurerm_resource_group.application.name
  app_service_plan_id        = azurerm_app_service_plan.app.id
  storage_account_name       = azurerm_storage_account.storage.name
  storage_account_access_key = azurerm_storage_account.storage.primary_access_key
}