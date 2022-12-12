terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "3.35.0"
    }
  }
}

provider "azurerm" {

  features {}
}

resource "azurerm_resource_group" "Tarun-RG1" {
  name     = "Tarun-RG1"
  location = "UK South"
}

resource "azurerm_storage_account" "Tarun-SG1" {
  name                     = "tarunstorageaccount1"
  resource_group_name      = azurerm_resource_group.Tarun-RG1.name
  location                 = azurerm_resource_group.Tarun-RG1.location
  account_tier             = "Standard"
  account_replication_type = "LRS"

  tags = {
    environment = "staging"
  }
}

resource "azurerm_storage_container" "Tarun-SG-CN1" {
  name = "tarunsgcn1"
  storage_account_name = azurerm_storage_account.Tarun-SG1.name
  container_access_type = "private"
}

resource "azurerm_storage_blob" "Tarun-SG-BL1" {
  name = "Adjective.png"
  storage_account_name = azurerm_storage_account.Tarun-SG1.name
  storage_container_name = azurerm_storage_container.Tarun-SG-CN1.name
  type = "Block"
  source = "Adjective.png"
}