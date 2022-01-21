
provider "kubernetes" {
  host  = module.cluster-gke.endpoint_cluster
  token = data.google_client_config.provider.access_token
  cluster_ca_certificate = base64decode(
    module.cluster-gke.cluster_ca_certificate_cluster,
  )
  alias = "cluster-gke"
}

module "cluster-gke" {
  source              = "./modules/gke/cluster-gke/cluster"
  cluster_name        = "cluster-gke"
  project             = var.project_id
  cluster_k8s_version = "1.21.5-gke.1302"
  node_version        = "1.21.5-gke.1302"
  cluster_region      = "us-east4-a"
  service_account     = module.service_account-gke-workload-identity.email-service-account
  resource_labels     = var.resource_labels
  list_cidr_blocks    = var.list_cidr_blocks
}

module "pool-node-gke" {
  source            = "./modules/gke/cluster-gke/node_pool"
  node_name         = "nodes-gke"
  cluster_name      = module.cluster-gke.name_cluster
  cluster_id        = module.cluster-gke.id_cluster
  service_account   = module.service_account-gke-workload-identity.email-service-account
  project           = var.project_id
  cluster_region    = "us-east4-a"
  number_nodes      = "1"
  node_disk_size    = "50"
  node_machine_type = "n1-standard-4"
  environment       = var.environment
  min_node_count    = "1"
  max_node_count    = "2"
}


