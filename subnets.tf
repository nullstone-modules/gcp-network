resource "google_compute_subnetwork" "public" {
  name                     = "${local.resource_name}-public-${count.index + 1}"
  ip_cidr_range            = var.public_subnets[count.index]
  network                  = google_compute_network.this.name
  region                   = data.google_compute_zones.available.region
  private_ip_google_access = false

  count = length(var.public_subnets)
}

resource "google_compute_subnetwork" "private" {
  name                     = "${local.resource_name}-private-${count.index + 1}"
  ip_cidr_range            = var.private_subnets[count.index]
  network                  = google_compute_network.this.name
  region                   = data.google_compute_zones.available.region
  private_ip_google_access = true

  count = length(var.private_subnets)
}

resource "google_compute_subnetwork" "access_connector" {
  name                     = "${local.resource_name}-connector-0"
  ip_cidr_range            = local.connector_subnet
  network                  = google_compute_network.this.name
  region                   = data.google_compute_zones.available.region
  private_ip_google_access = true
}
