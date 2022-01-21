resource "kubernetes_service_account" "workload-identity-ksa" {
  metadata {
    name      = var.name
    namespace = var.namespace
    annotations = {
      "iam.gke.io/gcp-service-account" = var.service_account
    }
  }
}

resource "google_service_account_iam_binding" "workload-identity-gsa-binding" {
  service_account_id = var.name_service_account
  role               = "roles/iam.workloadIdentityUser"

  members = [
    "serviceAccount:${var.project}.svc.id.goog[${var.namespace}/${kubernetes_service_account.workload-identity-ksa.metadata[0].name}]",
  ]
}

