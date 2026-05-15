variable "name" {
  description = "The name of the Storage Account. Must be globally unique, 3-24 chars, lowercase letters and numbers only."
  type        = string
}

variable "resource_group_name" {
  description = "The name of the resource group in which to create the Storage Account."
  type        = string
}

variable "location" {
  description = "The Azure region where the Storage Account will be created."
  type        = string
}

variable "account_tier" {
  description = "The tier of the Storage Account (Standard or Premium)."
  type        = string
  default     = "Standard"

  validation {
    condition     = contains(["Standard", "Premium"], var.account_tier)
    error_message = "account_tier must be either 'Standard' or 'Premium'."
  }
}

variable "account_replication_type" {
  description = "The replication type of the Storage Account (LRS, GRS, RAGRS, ZRS, GZRS, RAGZRS)."
  type        = string
  default     = "LRS"

  validation {
    condition     = contains(["LRS", "GRS", "RAGRS", "ZRS", "GZRS", "RAGZRS"], var.account_replication_type)
    error_message = "account_replication_type must be one of: LRS, GRS, RAGRS, ZRS, GZRS, RAGZRS."
  }
}

variable "account_kind" {
  description = "The kind of Storage Account (StorageV2, BlobStorage, Storage)."
  type        = string
  default     = "StorageV2"

  validation {
    condition     = contains(["StorageV2", "BlobStorage", "Storage"], var.account_kind)
    error_message = "account_kind must be one of: StorageV2, BlobStorage, Storage."
  }
}

variable "tags" {
  description = "A map of tags to assign to the Storage Account."
  type        = map(string)
  default     = {}
}