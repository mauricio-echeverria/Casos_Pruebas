variable "node_name" {
  description = "Cluster node names"
  type        = string
}

# variable "node_region" {
#   description = "Region where the Cluster will be created in GCP."
#   type        = string
#   default     = "us-east1-b"
# }

variable "number_nodes" {
  description = "Number of Nodes in the initial Cluster "
  type        = string
  default     = "1"
}

variable "node_disk_size" {
  description = "Node disk size in GB"
  type        = string
  default     = "50"
}
variable "node_machine_type" {
  description = "Node type machine"
  type        = string
  default     = "n1-standard-1"
}
variable "environment" {
  description = "Node environment"
  type        = string
  default     = "dev"
}
variable "project" {
  description = "GCP project name that must be unique"
  type        = string
}

variable "min_node_count" {
  description = "min node count"
  type        = string
  default     = "2"
}

variable "max_node_count" {
  description = "max node count"
  type        = string
  default     = "4"
}

variable "cluster_name" {
  description = "Cluster name in GCP."
  type        = string
  default     = "test-cluster-gcp"
}

variable "cluster_id" {
  description = "Cluster id in GCP."
}

variable "cluster_region" {
  description = "Cluster region in GCP."
  type        = string
  default     = "us-east4-a"
}

variable "service_account" {
  description = "Service account for cluster GKE"
  type        = string
}
