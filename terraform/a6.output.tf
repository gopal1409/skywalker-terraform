#resource start with resource
#varaible block start with variables
output "resource_group_name" {
  description = "The name of the resource group"
  value       = azurerm_resource_group.myrg.name
}

output "resource_group_location" {
  description = "The location of the resource group"
  value       = azurerm_resource_group.myrg.location
}

output "virtual_network_name" {
  description = "The name of the virtual network"
  value       = azurerm_virtual_network.vnet.name
}

output "subnet_name" {
  description = "The name of the subnet"
  value       = azurerm_subnet.web-subnet.name
}

output "local_tags" {
  description = "The tags defined in the local block"
  value       = local.project_lucky
}

output "public_ip_address" {
  description = "The public IP address"
  value       = azurerm_public_ip.web_vm_publiip.ip_address
}