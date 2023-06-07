data "google_compute_zones" "available" {
  depends_on = [google_project_service.compute]
}

resource "google_project_service" "compute" {
  service                    = "compute.googleapis.com"
  disable_dependent_services = false
  disable_on_destroy         = false
}

resource "google_project_service" "vpcaccess_api" {
  service                    = "vpcaccess.googleapis.com"
  disable_dependent_services = false
  disable_on_destroy         = false
}
