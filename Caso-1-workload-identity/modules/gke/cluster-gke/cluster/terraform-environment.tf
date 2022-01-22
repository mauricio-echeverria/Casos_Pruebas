variable "project" {
  description = "GCP project name that must be unique"
  type        = string
}

variable "cluster_name" {
  description = "Cluster name in GCP."
  type        = string
  default     = "test-cluster-gcp"
}

variable "cluster_k8s_version" {
  description = "Cluster kubernetes version on GCP."
  type        = string
  default     = "1.20.9-gke.1001"
}

variable "node_version" {
  description = "Cluster kubernetes version on GCP."
  type        = string
  default     = "1.20.9-gke.1001"
}

variable "cluster_region" {
  description = "Region where the Cluster will be created in GCP."
  type        = string
  default     = "us-east1-b"
}

variable "service_account" {
  description = "Service account for cluster GKE"
  type        = string
}

variable "resource_labels" {
  description = "tags to group resources"
  default = {
    bs-dom      = "cust"
    bs-cap      = "ordm"
    bu          = "fal"
    cc-id       = "1890"
    country     = "cl"
    ind         = "rtl"
    ppm-id      = "f00003044"
    environment = "dev"
  }
}

variable "list_cidr_blocks" {
  description = "Authorized IP list"
  type = map(object({
    cidr_block   = string,
    display_name = string
  }))
}

