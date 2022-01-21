# ---------------------------------------------------------------------------------------------------------------------
# ENVIRONMENT PROJECT
# ---------------------------------------------------------------------------------------------------------------------

#ID de Proyecto
variable "project_id" {
  description = "Project Code in GCP Boss"
}

variable "credentials_file" {
  description = "Connection credentials in json file"
}

variable "region" {
  description = "GCP project region"
}

# Zona de la region donde se creara las instancia
variable "region_zone" {
  description = "GCP project Zone"
}

variable "environment" {
  description = "Ambient environment variable"
}

variable "resource_labels" {
  description = "Tags assigned to the GKE cluster"

}

variable "list_cidr_blocks" {
  description = "List of IPs authorized to connect to the cluster"
}
