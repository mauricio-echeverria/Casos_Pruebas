# ---------------------------------------------------------------------------------------------------------------------
# ENVIRONMENT PROJECT DEV
# ---------------------------------------------------------------------------------------------------------------------

credentials_file            = "./credentials/credentials.json"
environment                 = "dev"
environment_create_resource = false
region                      = "us-east1"
region_zone                 = "us-east1-b"

resource_labels = {
  environment = "dev"
}

list_cidr_blocks = {
  "demo" = {
    cidr_block   = "186.104.116.89/32",
    display_name = "mecheverriav"
  }
}