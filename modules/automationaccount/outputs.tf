output "id" {
  description = "The ID of the Automation Account."
  value       = azurerm_automation_account.this.id
}

output "name" {
  description = "The name of the Automation Account."
  value       = azurerm_automation_account.this.name
}

output "identity_principal_id" {
  description = "The Principal ID of the system-assigned managed identity. Use this for RBAC role assignments."
  value       = azurerm_automation_account.this.identity[0].principal_id
}

output "identity_tenant_id" {
  description = "The Tenant ID of the system-assigned managed identity."
  value       = azurerm_automation_account.this.identity[0].tenant_id
}