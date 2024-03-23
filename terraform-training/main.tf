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

resource "azurerm_virtual_network" "vnet"{
  name = var.vnet_name
  address_space = [var.vnet_address_space]
  resource_group_name = var.rg_name
  location = "eastus"
}