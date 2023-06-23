output "resource_group" {
  value = var.resource_group
}

output "public_ip" {
  value = azurerm_public_ip.vm_public_ip.ip_address
}

output "tls_private_key" {
  value     = tls_private_key.ssh.private_key_pem
  sensitive = true
}