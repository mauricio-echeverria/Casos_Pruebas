resource "kubernetes_namespace" "k8s_namespace" {
  metadata {
    name = var.namespace
  }
}