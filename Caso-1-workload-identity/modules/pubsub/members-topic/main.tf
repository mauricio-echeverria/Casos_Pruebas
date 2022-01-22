
resource "google_pubsub_topic_iam_member" "editor" {
  project = var.projects
  topic   = var.topic
  count   = length(var.roles)
  role    = element(var.roles, count.index)
  member  = "serviceAccount:${var.email-service-account}"
}


