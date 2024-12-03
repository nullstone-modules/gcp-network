resource "google_project_service" "service-networking" {
  service                    = "servicenetworking.googleapis.com"
  disable_dependent_services = false
  disable_on_destroy         = false
}

resource "google_project_service_identity" "service-networking" {
  provider = google-beta

  project = local.project_id
  service = "servicenetworking.googleapis.com"

  depends_on = [google_project_service.service-networking]
}

resource "google_project_iam_member" "service_networking_service_agent" {
  project = local.project_id
  role    = "roles/servicenetworking.serviceAgent"
  member  = "serviceAccount:service-${local.project_number}@service-networking.iam.gserviceaccount.com"

  depends_on = [google_project_service_identity.service-networking]
}


resource "google_compute_global_address" "gcp_private" {
  name          = "${local.resource_name}-private-ip-range"
  purpose       = "VPC_PEERING"
  address_type  = "INTERNAL"
  prefix_length = 16
  network       = google_compute_network.this.id
}

resource "google_service_networking_connection" "private_vpc_connection" {
  network                 = google_compute_network.this.id
  service                 = "servicenetworking.googleapis.com"
  reserved_peering_ranges = [google_compute_global_address.gcp_private.name]

  depends_on = [google_project_iam_member.service_networking_service_agent]
}
