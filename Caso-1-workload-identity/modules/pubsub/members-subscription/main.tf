resource "google_pubsub_subscription_iam_member" "members" {
  project      = var.projects
  subscription = var.subscription
  count        = length(var.roles)
  role         = element(var.roles, count.index)
  member       = "serviceAccount:${var.email-service-account}"
}

