output "resource_group_name" {
  value = azurerm_resource_group.rg.name
}

output "vnet_name" {
  value = azurerm_virtual_network.vnet.name
}

output "subnet_app_id" {
  value = azurerm_subnet.subnet_app.id
}

output "subnet_mgmt_id" {
  value = azurerm_subnet.subnet_mgmt.id
}

output "log_analytics_workspace_id" {
  value = azurerm_log_analytics_workspace.law.id
}
