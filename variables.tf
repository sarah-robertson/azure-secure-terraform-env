variable "location" {
  description = "Azure region"
  type        = string
  default     = "uksouth"
}

variable "project_name" {
  description = "Naming prefix"
  type        = string
  default     = "secureenv"
}

variable "environment" {
  description = "Environment name (dev/test/prod)"
  type        = string
  default     = "dev"
}

