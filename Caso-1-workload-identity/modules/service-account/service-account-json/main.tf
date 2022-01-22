# ---------------------------------------------------------------------------------------------------------------------
# CREAR ARCHIVO JSON DE CUENTA DE SERVICIO
# ---------------------------------------------------------------------------------------------------------------------

resource "local_file" "service_account" {
  content  = base64decode(var.content_service_account)
  filename = "./json/${var.name_json}.json"
}