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

  dead_letter_policy {
    dead_letter_topic     = "projects/${var.project}/topics/${var.dead_letter_topic}"
    max_delivery_attempts = var.max_delivery_attempts
  }

  #Caducidad de la suscripción
  expiration_policy {
    ttl = ""
  }

  # Límite de confirmación (El plazo límite debe ser de 10 a 600 segundos)
  ack_deadline_seconds = var.ack_deadline_seconds

  # Conservar mensajes confirmados
  retain_acked_messages = true

  retry_policy {
    maximum_backoff = var.maximum_backoff
    minimum_backoff = var.minimum_backoff
  }

}

