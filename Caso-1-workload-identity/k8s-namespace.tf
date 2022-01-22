module "kubernetes_namespace_v1" {
  source = "./modules/kubernetes/namespace"
  namespace = "v1"
  providers = {
    kubernetes = kubernetes.cluster-gke
  }
}

module "kubernetes_namespace_workload_identity_v2" {
  source = "./modules/kubernetes/namespace"
  namespace = "v2"
  providers = {
    kubernetes = kubernetes.cluster-gke
  }
}