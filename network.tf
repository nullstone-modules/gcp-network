locals {
  public_subnets = [for index, subnet_cidr in var.public_subnets : {
    subnet_name   = "${local.resource_name}-public-${index + 1}"
    subnet_ip     = subnet_cidr
    subnet_region = data.google_compute_zones.available.region
  }]

  private_subnets = [for index, subnet_cidr in var.private_subnets : {
    subnet_name           = "${local.resource_name}-private-${index + 1}"
    subnet_ip             = subnet_cidr
    subnet_region         = data.google_compute_zones.available.region
    subnet_private_access = "true"
  }]
}

module "gcp-network" {
  source  = "terraform-google-modules/network/google"
  version = "~> 4.0"

  project_id   = data.google_compute_zones.available.project
  network_name = local.resource_name
  routing_mode = "GLOBAL"
  subnets      = concat(local.public_subnets, local.private_subnets)
}

resource "google_compute_router_nat" "nat" {
  depends_on = [module.gcp-network]

  name                               = "${module.gcp-network.network_name}-nat"
  router                             = google_compute_router.router.name
  region                             = data.google_compute_zones.available.region
  nat_ip_allocate_option             = "AUTO_ONLY"
  source_subnetwork_ip_ranges_to_nat = "LIST_OF_SUBNETWORKS"

  dynamic "subnetwork" {
    for_each = var.private_subnets
    content {
      name                    = "${local.resource_name}-private-${subnetwork.key + 1}"
      source_ip_ranges_to_nat = ["ALL_IP_RANGES"]
    }
  }
}

resource "google_compute_router" "router" {
  name    = "${module.gcp-network.network_name}-router"
  network = module.gcp-network.network_name
  region  = data.google_compute_zones.available.region

  bgp {
    asn            = 64514
    advertise_mode = "CUSTOM"
  }
}