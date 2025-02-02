terraform {
  required_version = ">= 1.3.0"
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "3.108.0"
    }
  }

  backend "azurerm" {
    resource_group_name  = "rg-terraform-state"
    storage_account_name = "joaoterraformstate96"
    container_name       = "remote-state"
    key                  = "terraform-console/terraform.tfstate"
  }
}

provider "azurerm" {
  features {
  }
}