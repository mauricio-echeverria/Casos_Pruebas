output "json-key" {
  value       = local_file.service_account.content
  description = "Key file of service account"
  sensitive   = true
}
