resource "google_container_cluster" "primary" {
  name                     = var.cluster_name
  location                 = var.cluster_region
  initial_node_count       = "1"
  remove_default_node_pool = false
  enable_shielded_nodes    = true
  min_master_version       = var.cluster_k8s_version
  node_version             = var.node_version
  project                  = var.project
  resource_labels          = var.resource_labels

  ip_allocation_policy {
  }

  master_authorized_networks_config {

    dynamic "cidr_blocks" {
      for_each = var.list_cidr_blocks
      content {
        cidr_block   = cidr_blocks.value.cidr_block
        display_name = cidr_blocks.value.display_name
      }
    }

  }

  node_config {
    # Google recommends custom service accounts that have cloud-platform scope and permissions granted via IAM Roles.
    service_account = var.service_account
    # oauth_scopes = [
    #   "https://www.googleapis.com/auth/cloud-platform"
    # ]
    # guest_accelerator {
    #   type  = "nvidia-tesla-k80"
    #   count = 1
    # }
  }

  # Enable Workload Identity
  workload_identity_config {
    identity_namespace = "${var.project}.svc.id.goog"
  }

  addons_config {
    http_load_balancing {
      disabled = false
    }
    horizontal_pod_autoscaling {
      disabled = true
    }
    network_policy_config {
      disabled = false
    }

  }

  maintenance_policy {
    daily_maintenance_window {
      start_time = "03:00"
    }
  }

}