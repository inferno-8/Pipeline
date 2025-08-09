terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.32.0"
    }
  }

git sttaus
  backend "azurerm" {
      resource_group_name   = "RRJ-ResourceGroup"        
      storage_account_name  = "rrj8stg"
      container_name        = "rrjcontainer"
      key                   = "devops.terraform.tfstate"
    }

}


provider "azurerm" {
  features {}
  subscription_id = "4a8937a7-b294-4a1f-8d31-79bbb1a4c17f"
}

resource "azurerm_resource_group" "rj" {
  name     = "RRJ-ResourceGroup"
  location = "East US"
}

resource "azurerm_resource_group" "rj" {
  name     = "RRJ1-ResourceGroup"
  location = "centralus"
}