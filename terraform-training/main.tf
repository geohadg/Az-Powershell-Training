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

resource "azurerm_storage_account" "stac" {
  name = var.storageaccount-name
  location = "eastus"
  account_kind = var.storageaccount-kind
  account_tier = var.access-tier
  account_replication_type = var.replicationtype
  resource_group_name = var.rg_name
}