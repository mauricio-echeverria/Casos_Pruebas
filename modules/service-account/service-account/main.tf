# ---------------------------------------------------------------------------------------------------------------------
# CREAR CUENTA DE SERVICIO
# ---------------------------------------------------------------------------------------------------------------------

resource "google_service_account" "service_account" {
  account_id   = var.id_account
  display_name = var.display_name
  project      = var.projects
  description  = var.description
}

# ---------------------------------------------------------------------------------------------------------------------
# ROTACION DE SERVICE ACCOUNT
# ---------------------------------------------------------------------------------------------------------------------

resource "time_rotating" "mykey_rotation" {
  rotation_days = 180
}

# ---------------------------------------------------------------------------------------------------------------------
# CREAR ID DE CUENTA DE SERVICIO
# ---------------------------------------------------------------------------------------------------------------------
resource "google_service_account_key" "service_account" {
  service_account_id = google_service_account.service_account.name
  public_key_type    = "TYPE_X509_PEM_FILE"

  keepers = {
    rotation_time = time_rotating.mykey_rotation.rotation_rfc3339
  }
}





