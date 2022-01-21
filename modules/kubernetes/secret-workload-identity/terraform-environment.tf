variable "name" {
  description = "Secrets k8s name"
  type        = string
  default     = "test-secrets"
}

variable "project" {
  description = "GCP project name that must be unique"
  type        = string
}

variable "namespace" {
  description = "Namespace k8s name"
  type        = string
  default     = "test-namespace"
}

variable "name_service_account" {
  description = "Service account for secrets"
  type        = string
}

variable "service_account" {
  description = "Service account for secrets"
  type        = string
}