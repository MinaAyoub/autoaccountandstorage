resource "azurerm_resource_group" "saccount" {
  name     = var.resource_group_name
  location = var.location
  tags     = var.tags
}

module "storage_account" {
  source = "./modules/storageaccount"

  name                = var.storage_account_name
  resource_group_name = azurerm_resource_group.saccount.name
  location            = var.location
  tags                = var.tags
  container_name      = var.container_name
}

module "automation_account" {
  source = "./modules/automationaccount"

  name                = var.automation_account_name
  resource_group_name = azurerm_resource_group.saccount.name
  location            = var.location
  tags                = var.tags
}
