module "json-service_account-gke-pubsub-v1" {
  source = "./modules/service-account/service-account-json"
  name_json               = "pubsub-v1"
  content_service_account = module.service_account-gke-pubsub-v1.content_key
}
