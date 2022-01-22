# ---------------------------------------------------------------------------------------------------------------------
# ENVIRONMENT CUENTA DE SERVICIO
# ---------------------------------------------------------------------------------------------------------------------


variable "roles" {
  type    = list(string)
  default = []
}

variable "topic" {
}

variable "projects" {
  description = "Codigo de Proyecto en GCP"
}


variable "email-service-account" {
  description = "Codigo de Proyecto en GCP"
}
