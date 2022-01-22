output "endpoint_cluster" {
  value       = google_container_cluster.primary.endpoint
  description = "The unique name of the suscripcion"
}

output "username_cluster" {
  value       = google_container_cluster.primary.master_auth.0.username
  description = "The unique name of the suscripcion"
}

output "password_cluster" {
  value       = google_container_cluster.primary.master_auth.0.password
  description = "The unique name of the suscripcion"
}

output "client_certificate_cluster" {
  value       = google_container_cluster.primary.master_auth.0.client_certificate
  description = "The unique name of the suscripcion"
}

output "client_key_cluster" {
  value       = google_container_cluster.primary.master_auth.0.client_key
  description = "The unique name of the suscripcion"

}

output "cluster_ca_certificate_cluster" {
  value       = google_container_cluster.primary.master_auth.0.cluster_ca_certificate
  description = "The unique name of the suscripcion"
}

output "name_cluster" {
  value       = google_container_cluster.primary.name
  description = "The unique name of the cluster"
}

output "id_cluster" {
  value       = google_container_cluster.primary.id
  description = "The unique id of the cluster"
}