variable "name" {
  description = "The name of the Automation Account."
  type        = string
}

variable "resource_group_name" {
  description = "The name of the resource group in which to create the Automation Account."
  type        = string
}

variable "location" {
  description = "The Azure region where the Automation Account will be created."
  type        = string
}

variable "sku_name" {
  description = "The SKU of the Automation Account. Possible values are Basic and Free."
  type        = string
  default     = "Basic"

  validation {
    condition     = contains(["Basic", "Free"], var.sku_name)
    error_message = "sku_name must be either 'Basic' or 'Free'."
  }
}

variable "tags" {
  description = "A map of tags to assign to the Automation Account."
  type        = map(string)
  default     = {}
}