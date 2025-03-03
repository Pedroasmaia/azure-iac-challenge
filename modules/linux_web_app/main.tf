resource "azurerm_linux_web_app" "example" {
  name                = "app-${lower(var.project)}-${lower(var.identifier)}-${lower(var.env)}"
  resource_group_name = var.rg_name
  location            = "West Us 2"
  service_plan_id     = var.service_plan_id
  https_only = true
  public_network_access_enabled = true
  identity {
    type = "SystemAssigned"
  }
  site_config {}
}