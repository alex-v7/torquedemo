variable "location" {
  description = "Azure region for the resources"
  type        = string
  default     = "East US"
}

variable "storage_account_name" {
  description = "Name of the Azure Storage Account"
  type        = string
  default     = "use2d3storage"
}

variable "container_name" {
  description = "Name of the Blob Container"
  type        = string
  default     = "emergencylandingpage"
}  