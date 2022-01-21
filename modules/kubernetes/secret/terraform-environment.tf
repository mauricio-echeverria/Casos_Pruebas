variable "name" {
  description = "Secrets k8s name"
  type        = string
  default     = "test-secrets"
}

variable "namespace" {
  description = "Namespace k8s name"
  type        = string
  default     = "test-namespace"
}

variable "type" {
  description = "Secrets k8s type"
  type        = string
}

variable "data" {
  description = "Secrets k8s content"
  type        = map(any)
}