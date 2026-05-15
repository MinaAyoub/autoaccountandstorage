resource_group_name     = "rg-automation-prod-eus"
location                = "eastus"
storage_account_name    = "stautomationprodeus01"
automation_account_name = "aa-reporting-prod-eus"

tags = {
  Environment = "Production"
  ManagedBy   = "Terraform"
  Owner       = "CloudEngineering"
}