provider "azurerm" {
  features {

  }
}
resource "azurerm_resource_group" "arg" {
  name     = "${var.resource_group}-arg"
  location = var.location
}



resource "azurerm_virtual_network" "avn" {
  name                = "Red-Esteban"
  address_space       = ["10.0.0.0/16"]
  location            = var.location
  resource_group_name = azurerm_resource_group.arg.name
}
resource "azurerm_subnet" "sn" {
  name                 = "${var.resource_group}-sn"
  resource_group_name  = azurerm_resource_group.arg.name
  virtual_network_name = azurerm_virtual_network.avn.name
  address_prefixes     = ["10.0.2.0/24"]
}
module "vm" {
  prefix         = "prueba"
  source         = "./modules/vm"
  subnet-id      = azurerm_subnet.sn.id
  resource_group = azurerm_resource_group.arg.name
  location       = azurerm_resource_group.arg.location
  user           = var.user
  password       = var.password
}