resource "tls_private_key" "ssh" {
  algorithm = "RSA"
  rsa_bits  = 4096
}

resource "azurerm_public_ip" "vm_public_ip" {
  name                = "vm-public-ip_20221462"
  location            = var.location
  resource_group_name = var.resource_group
  allocation_method   = "Static"

}

resource "azurerm_network_interface" "interface" {
  name                = var.interface
  location            = var.location
  resource_group_name = var.resource_group

  ip_configuration {
    name                          = "my-ip-configuration"
    subnet_id                     = data.azurerm_subnet.subnet.id
    private_ip_address_allocation = "Dynamic"
    public_ip_address_id          = azurerm_public_ip.vm_public_ip.id
  }
}

resource "azurerm_linux_virtual_machine" "myvm" {
  name                  = var.virtual_machine_name
  location              = var.location
  resource_group_name   = var.resource_group
  network_interface_ids = [azurerm_network_interface.interface.id]
  size                  = var.virtual_machine_size
  admin_username        = var.user
  computer_name  = "hostname"

  source_image_reference {
    publisher = "Canonical"
    offer     = "UbuntuServer"
    sku       = var.os
    version   = "latest"
  }

  os_disk {
    caching              = "ReadWrite"
    storage_account_type = "Standard_LRS"
  }

  admin_ssh_key {
    username   = var.user
    public_key = tls_private_key.ssh.public_key_openssh
  }
    
  
}

