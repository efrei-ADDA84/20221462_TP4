#initialiser ton instance Terraform vis-à-vis du provider que tu vas utiliser

# version de terraform à installer
terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=3.0.0"
    }
  }
}
#on specifie le AZ CLI, on s'authentifie sur Azure en ligne de commande

# Configure the Microsoft Azure Provider
provider "azurerm" {
  features {}

  subscription_id = "765266c6-9a23-4638-af32-dd1e32613047"
}