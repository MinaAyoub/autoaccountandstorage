output "id" {
  description = "The ID of the Storage Account."
  value       = azurerm_storage_account.this.id
}

output "name" {
  description = "The name of the Storage Account."
  value       = azurerm_storage_account.this.name
}

output "primary_blob_endpoint" {
  description = "The primary blob endpoint URL of the Storage Account."
  value       = azurerm_storage_account.this.primary_blob_endpoint
}

output "primary_access_key" {
  description = "The primary access key of the Storage Account."
  value       = azurerm_storage_account.this.primary_access_key
  sensitive   = true
}

output "container_name" {
  description = "The name of the blob container."
  value       = azurerm_storage_container.this.name
}