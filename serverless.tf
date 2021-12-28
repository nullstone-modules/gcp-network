resource "google_project_service" "vpcaccess_api" {
  service            = "vpcaccess.googleapis.com"
  disable_on_destroy = false
}

resource "google_vpc_access_connector" "serverless" {
  name          = "${local.resource_name}-serverless"
  network       = google_compute_network.this.name
  ip_cidr_range = var.serverless_range

  depends_on = [google_project_service.vpcaccess_api]
}
