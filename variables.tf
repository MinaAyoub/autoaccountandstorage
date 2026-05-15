variable "resource_group_name" {
  description = "The name of the resource group."
  type        = string
}

variable "location" {
  description = "The Azure region for all resources."
  type        = string
}

variable "storage_account_name" {
  description = "The name of the Storage Account."
  type        = string
}

variable "automation_account_name" {
  description = "The name of the Automation Account."
  type        = string
}

variable "tags" {
  description = "A map of tags to apply to all resources."
  type        = map(string)
  default     = {}
}