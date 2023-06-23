data "azurerm_virtual_network" "network" {
  name                = var.network
  resource_group_name = var.resource_group
}

data "azurerm_subnet" "subnet" {
  name                 = var.subnet
  resource_group_name  = var.resource_group
  virtual_network_name = var.network
}