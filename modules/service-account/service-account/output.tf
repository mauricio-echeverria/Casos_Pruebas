output "email-service-account" {
  value       = google_service_account.service_account.email
  description = "The email of service account"
}

output "content_key" {
  value       = google_service_account_key.service_account.private_key
  description = "Key file of service account"
  sensitive   = true
}

output "name-service-account" {
  value       = google_service_account.service_account.name
  description = "name of service account"
}