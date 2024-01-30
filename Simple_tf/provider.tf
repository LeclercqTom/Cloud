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
    client_id       = "#{573e809e-c035-4e6b-a443-d9d159f55acb}"
    client_secret   = "XfH8Q~D40Uo-mvb.1HQF96GudkDl.Y.-Q9Da4cjC"
    tenant_id       = "02a775bc-748f-4f51-900a-308c4b588f94"
    subscription_id = "a9f1a513-0637-45f8-b4de-813d8688b5a5"

}