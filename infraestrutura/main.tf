terraform {
  backend "azurerm" {
    resource_group_name  = "rg-pedro-terraform-poc"             # Pode ser passado via `-backend-config="resource_group_name=<nome do resource group>"` no comando `init`.
    storage_account_name = "stpedroterraformpoc"                                 # Pode ser passado via `-backend-config="storage_account_name=<nome da conta de armazenamento>"` no comando `init`.
    container_name       = "tfstate"                                  # Pode ser passado via `-backend-config="container_name=<nome do contêiner>"` no comando `init`.
    key                  = "pedro.terraform.tfstate"                   # Pode ser passado via `-backend-config="key=<nome da chave do blob>"` no comando `init`.
  }
}
provider "azurerm" {
  features {}
  subscription_id = "3ae7aab3-53ca-4a8c-9022-d54da98696d1"
}