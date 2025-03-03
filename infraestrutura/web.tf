resource "azurerm_resource_group" "rgpedroterraformdev" {
  name = "rg-pedro-terraform-dev"
  location = var.location
  tags = {
    "CriadoPor" = var.email
  }
}


resource "azurerm_service_plan" "asppedroterraformdev" {
  name = "asp-pedro-terraform-dev"
  resource_group_name = azurerm_resource_group.rgpedroterraformdev.name
  location = var.location
  os_type = "Linux"
  sku_name = "P1v2"
}

module "webapp" {
  source = "../modules/linux_web_app"
  project = "pedro"
  identifier = "terraform"
  env = var.env
  rg_name = azurerm_resource_group.rgpedroterraformdev.name
  service_plan_id = azurerm_service_plan.asppedroterraformdev.id 
}