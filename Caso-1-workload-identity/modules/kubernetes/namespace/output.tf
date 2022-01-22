output "name-namespace" {
  value       = kubernetes_namespace.k8s_namespace.metadata.0.name
  description = "Namespace"
}