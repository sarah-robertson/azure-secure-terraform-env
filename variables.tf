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

variable "admin_ip" {
  description = "Admin IP allowed to SSH into the management subnet (CIDR). In CI this uses a placeholder."
  type        = string
  default     = "0.0.0.0/32"
}


