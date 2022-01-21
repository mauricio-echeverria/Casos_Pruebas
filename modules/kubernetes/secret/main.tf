resource "kubernetes_secret" "k8s_secret" {
  metadata {
    name      = var.name
    namespace = var.namespace
  }

  data = var.data
  type = var.type

}