# ---------------------------------------------------------------------------------------------------------------------
# PROVEEDOR GCP    TERRAFORM v0.14.8
# ---------------------------------------------------------------------------------------------------------------------

provider "google" {
  credentials = file("${var.credentials_file}")
  project     = var.project_id
  region      = var.region
  version     = "~> 3.58"
}

data "google_client_config" "provider" {}