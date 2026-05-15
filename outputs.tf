output "storage_account_id" {
  description = "The ID of the Storage Account."
  value       = module.storage_account.id
}

output "storage_account_name" {
  description = "The name of the Storage Account."
  value       = module.storage_account.name
}

output "storage_account_primary_blob_endpoint" {
  description = "The primary blob endpoint of the Storage Account."
  value       = module.storage_account.primary_blob_endpoint
}

# ── Automation Account outputs ──

output "automation_account_id" {
  description = "The ID of the Automation Account."
  value       = module.automation_account.id
}

output "automation_account_name" {
  description = "The name of the Automation Account."
  value       = module.automation_account.name
}

output "automation_account_identity_principal_id" {
  description = "The Principal ID of the Automation Account's system-assigned managed identity."
  value       = module.automation_account.identity_principal_id
}