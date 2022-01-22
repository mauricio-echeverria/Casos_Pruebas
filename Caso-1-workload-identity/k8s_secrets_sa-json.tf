module "secrets-k8s-pubsub-v1-key" {
  source = "./modules/kubernetes/secret"
  namespace = module.kubernetes_namespace_v1.name-namespace
  name      = "pubsub-v1-key"
  providers = {
    kubernetes = kubernetes.cluster-gke
  }
  data = {
    "key.json" = "${module.json-service_account-gke-pubsub-v1.json-key}"
  }
  type = "Opaque"
}
