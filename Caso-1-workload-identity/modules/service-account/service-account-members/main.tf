# ---------------------------------------------------------------------------------------------------------------------
# ROL DE CUENTA DE SERVICIO
# ---------------------------------------------------------------------------------------------------------------------

resource "google_project_iam_member" "service_account" {
  count  = length(var.roles)
  role   = element(var.roles, count.index)
  member = "serviceAccount:${var.member}"
}