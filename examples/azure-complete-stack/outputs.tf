output "resource_group_name" { value = azurerm_resource_group.this.name }
output "vm_public_ip" { value = azurerm_public_ip.vm.ip_address }
output "ssh_command" { value = "ssh ${var.admin_username}@${azurerm_public_ip.vm.ip_address}" }
output "storage_account_name" { value = azurerm_storage_account.this.name }
output "key_vault_name" { value = azurerm_key_vault.this.name }
output "log_analytics_workspace_name" { value = azurerm_log_analytics_workspace.this.name }
