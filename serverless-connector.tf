resource "google_vpc_access_connector" "serverless" {
  count      = 1
  depends_on = [google_compute_network.this]

  name         = "${local.resource_name}-${count.index}"
  machine_type = "e2-micro"

  subnet {
    name = google_compute_subnetwork.access_connector.name
  }
}
