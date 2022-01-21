resource "google_container_node_pool" "node_pool" {
  name       = var.node_name
  cluster    = var.cluster_id
  location   = var.cluster_region
  node_count = var.number_nodes
  project    = var.project
  depends_on = [var.cluster_name]

  node_config {
    preemptible  = false
    disk_size_gb = var.node_disk_size
    machine_type = var.node_machine_type
    # Google recommends custom service accounts that have cloud-platform scope and permissions granted via IAM Roles.
    service_account = var.service_account
    oauth_scopes = [
      "https://www.googleapis.com/auth/cloud-platform",
      "https://www.googleapis.com/auth/compute",
      "https://www.googleapis.com/auth/devstorage.read_only",
      "https://www.googleapis.com/auth/logging.write",
      "https://www.googleapis.com/auth/monitoring",
    ]

    metadata = {
      disable-legacy-endpoints = "true"
    }

    labels = {
      name_cluster = "${var.project}-${var.environment}-cluster"
      project      = "${var.project}"
      env          = "${var.environment}"
    }

    # Enable Workload Identity
    workload_metadata_config {
      mode = "GKE_METADATA"
    }


    tags = ["${var.environment}", "gke", "${var.project}"]

  }

  autoscaling {
    min_node_count = var.min_node_count
    max_node_count = var.max_node_count
  }

  timeouts {
    create = "30m"
    update = "20m"
  }
}