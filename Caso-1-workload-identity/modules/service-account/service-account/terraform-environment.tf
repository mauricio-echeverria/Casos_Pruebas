# ---------------------------------------------------------------------------------------------------------------------
# ENVIRONMENT CUENTA DE SERVICIO
# ---------------------------------------------------------------------------------------------------------------------

variable "id_account" {
  description = "value id account"
  type        = string
}

variable "display_name" {
  description = "value display name"
  type        = string
  default     = "test"
}

variable "description" {
  description = "service account description value "
  type        = string
  default     = "service account test"
}
variable "projects" {
  description = "Codigo de Proyecto en GCP"
  type        = string
}
