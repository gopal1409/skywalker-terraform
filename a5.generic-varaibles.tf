variable "resource_group_name" {
  description = "The name of the resource group"
  type        = string
  default     = "gopal-rg" #you need to provide an default
}

variable "resource_group_location" {
  description = "The Azure region where the resources will be created"
  type        = string
  default     = "East US"
}

variable "environment" {
  description = "The environment for the resources (e.g., dev, test, prod)"
  type        = string
  default     = "dev"
}

variable "business_unit" {
  description = "The business unit for the resources"
  type        = string
  default     = "sap"
}