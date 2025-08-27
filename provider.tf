terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
    }
  }
}
provider "azurerm" {
  subscription_id = "ca5c57dd-3aab-4628-a78c-978830d03bbd"
  features {}
}

