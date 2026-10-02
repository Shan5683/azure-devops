terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "5.6.0"
    }
  }
  backend "azurerm" {
    resource_group_name  = "pipeline-rg"
    storage_account_name = "pipelinestorageacct"
    container_name       = "tfstate"
    key                  = "terraform.tfstate"
  }
}

provider "azurerm" {
  features {}
}