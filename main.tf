terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "4.48.0"
    }
  }
}

provider "azurerm" {
  # Configuration options
}

resource "azurerm_resource_group" "rg" {
  name     = "torque-assignment-rg"
  location = var.location
}

resource "azurerm_storage_account" "storage" {
  name                     = var.storage_account_name
  resource_group_name      = azurerm_resource_group.rg.name
  location                 = azurerm_resource_group.rg.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
}

resource "azurerm_storage_container" "container" {
  name                  = var.container_name
  storage_account_id  = azurerm_storage_account.storage.id
  container_access_type = "private"
}