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

  client_id       = "54bd1b38-5be4-4fb4-962d-6eac839c57d7"
  client_secret   = "RFd8Q~Er.W6nkzwD54OK4X0pmElQ51s-4x0l3drd"
  tenant_id       = "0197b94a-021f-4794-8c1e-0a4ac9b304a4"
  subscription_id = "9025917f-064b-4b0d-abac-73281ef2051b"
}