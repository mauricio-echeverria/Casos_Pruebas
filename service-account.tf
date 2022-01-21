# ---------------------------------------------------------------------------------------------------------------------
# SERVICE ACCOUNT
# ---------------------------------------------------------------------------------------------------------------------

module "service_account-gke-workload-identity" {
  source       = "./modules/service-account/service-account"
  id_account   = "gke-workload-identity"
  display_name = "gke-workload-identity"
  projects     = var.project_id
  description  = "service account used for cluster gke"
}

module "service_account-gke-pubsub-v1" {
  source       = "./modules/service-account/service-account"
  id_account   = "pubsub-v1"
  display_name = "pubsub-v1"
  projects     = var.project_id
  description  = "service account used for cluster gke"
}

module "service_account-gke-pubsub-v2" {
  source       = "./modules/service-account/service-account"
  id_account   = "pubsub-v2"
  display_name = "pubsub-v2"
  projects     = var.project_id
  description  = "service account used for cluster gke"
}