module "workload-identity-k8s-gke-workload-identity-sa" {
  source               = "./modules/kubernetes/secret-workload-identity"
  name                 = "pubsub-v2-sa"
  project              = var.project_id
  namespace            = module.kubernetes_namespace_workload_identity_v2.name-namespace
  name_service_account = module.service_account-gke-pubsub-v2.name-service-account
  service_account      = module.service_account-gke-pubsub-v2.email-service-account
  providers = {
    kubernetes = kubernetes.cluster-gke
  }
}