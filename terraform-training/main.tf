# Configure the Azure provider
terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.0.2"
    }
  }

  required_version = ">= 1.1.0"
}

provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "rg" {
  name     = var.rg_name
  location = "eastus"
}

resource "azurerm_virtual_network" "vnet" {
    name                = var.vnet_name
    location            = "eastus"
    address_space       = [var.vnet_address_space]
    resource_group_name = azurerm_resource_group.rg.name
}

resource "azurerm_storage_account" "stac" {
  name                     = var.storageaccount-name
  location                 = "eastus"
  account_kind             = var.storageaccount-kind
  account_tier             = var.account-tier
  account_replication_type = var.replicationtype
  resource_group_name      = azurerm_resource_group.rg.name
}

output "storage-id" {
    description = "storage account id"
    value       = azurerm_storage_account.stac.id
}

output "rg-id" {
    description = "Resource group id"
    value       = azurerm_resource_group.rg.id
}

output "vnet-id" {
    description = "Virtual Network id"
    value       = azurerm_virtual_network.vnet.id  
}