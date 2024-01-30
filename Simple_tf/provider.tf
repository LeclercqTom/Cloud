terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "3.89.0"
    }
  }
}

# Configure the Microsoft Azure Provider
provider "azurerm" {
    features {}
    client_id       = "#{my_client_id}#"
    client_secret   = "#{my_client_secret}#"
    tenant_id       = "#{my_tenant_id}#"
    subscription_id = "#{my_subscription_id}#"

}