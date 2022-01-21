# ---------------------------------------------------------------------------------------------------------------------
# PUB/SUB
# ---------------------------------------------------------------------------------------------------------------------
resource "google_pubsub_subscription" "subscription" {
  name   = var.name-suscripcion
  topic  = var.topic
  labels = var.resource_labels_pubsub

  project = var.project

  # Periodo de retención del mensaje (3 dias en segundos)
  #message_retention_duration = "604800s"

  message_retention_duration = var.message_retention_duration

  #Caducidad de la suscripción
  expiration_policy {
    ttl = ""
  }

  # Límite de confirmación (El plazo límite debe ser de 10 a 600 segundos)
  ack_deadline_seconds = var.ack_deadline_seconds

  push_config {
    push_endpoint = var.push_endpoint

    oidc_token {
      service_account_email = var.service_account_email
    }

    attributes = {
      x-goog-version = "v1"
    }
  }

  # Conservar mensajes confirmados
  retain_acked_messages = true

  filter = var.filter
}
