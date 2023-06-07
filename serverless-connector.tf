resource "google_vpc_access_connector" "serverless" {
  count = length(var.private_subnets) > 0 && length(var.public_subnets) > 0 ? 1 : 0

  name         = "${local.resource_name}-${count.index}"
  machine_type = "e2-micro"

  subnet {
    name = google_compute_subnetwork.public[0].name
  }
}
