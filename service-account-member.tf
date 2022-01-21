module "member-service_account-gke-workload-identity" {
  source = "./modules/service-account/service-account-members"
  roles  = ["roles/logging.logWriter", "roles/monitoring.metricWriter", "roles/monitoring.viewer", "roles/stackdriver.resourceMetadata.writer", "roles/storage.objectViewer", "roles/artifactregistry.reader", "roles/iam.workloadIdentityUser"]
  member = module.service_account-gke-workload-identity.email-service-account
}

module "member-service_account-gke-pubsub-v1" {
  source = "./modules/service-account/service-account-members"
  roles  = ["roles/pubsub.subscriber", "roles/pubsub.publisher"]
  member = module.service_account-gke-pubsub-v1.email-service-account
}

module "member-service_account-gke-pubsub-v2" {
  source = "./modules/service-account/service-account-members"
  roles  = ["roles/pubsub.subscriber", "roles/pubsub.publisher"]
  member = module.service_account-gke-pubsub-v2.email-service-account
}