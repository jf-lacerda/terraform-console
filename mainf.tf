terraform {
    required_version = ">= 1.3.0"
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "3.108.0"
    }
  }

    backend "azurerm" {
    resource_group_name  = "rg-terraform-state"  
    storage_account_name = "joaolacerdaterraform"                     
    container_name       = "container-terraform"               
    key                  = "azure-vnet/terraform.tfstate"       
  }
}

provider "azurerm" {
  features {
  }
}