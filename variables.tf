#---------------------------------------------------------------------------------------------------
# Kubernetes
#---------------------------------------------------------------------------------------------------
variable "kubernetes_namespace" {
  sensitive   = false
  type        = string
  description = "Kubernetes Namespace"
  default     = "postgresql"
}

variable "helm_release_name" {
  sensitive   = false
  type        = string
  description = "Helm Release Name"
  default     = "postgresql"
}

#---------------------------------------------------------------------------------------------------
# Storage
#---------------------------------------------------------------------------------------------------
variable "kubernetes_storage_class" {
  sensitive   = false
  type        = string
  description = "Kubernetes Storage Class"
  default     = ""
}

variable "kubernetes_storage_allocation_size" {
  sensitive   = false
  type        = string
  description = "PostgreSQL Storage Allocation Size"
  default     = "8Gi"
}

#---------------------------------------------------------------------------------------------------
# PostgreSQL
#---------------------------------------------------------------------------------------------------
variable "postgresql_version" {
  sensitive   = false
  type        = string
  description = "PostgreSQL version"
  default     = "11.14.0"
}

variable "postgresql_router_count" {
  sensitive   = false
  type        = number
  description = "Total PostgreSQL Pool"
  default     = 1
}

variable "postgresql_server_count" {
  sensitive   = false
  type        = number
  description = "Total PostgreSQL Server"
  default     = 1
}

#---------------------------------------------------------------------------------------------------
# Authentication
#---------------------------------------------------------------------------------------------------
variable "postgresql_username" {
  sensitive   = false
  description = "Username"
  default     = "postgres"
}

variable "postgresql_password" {
  sensitive   = true
  description = "PostgreSQL Password"
}
