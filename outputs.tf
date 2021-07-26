output "vpc_name" {
  value       = module.gcp-network.network_name
  description = "string ||| The name of the VPC being created"
}

output "subnets" {
  value       = module.gcp-network.subnets
  description = "map ||| A map with keys of form subnet_region/subnet_name and values being the outputs of the google_compute_subnetwork resources used to create corresponding subnets."
}

output "subnets_names" {
  value       = module.gcp-network.subnets_names
  description = "list(string) ||| The names of the subnets being created"
}

output "subnets_ids" {
  value       = module.gcp-network.subnets_ids
  description = "list(string) ||| The IDs of the subnets being created"
}

output "cloud_nat" {
  value       = google_compute_router_nat.nat.id
  description = "string ||| Id of Cloud NAT"
}

output "cloud_router" {
  value       = google_compute_router.router.id
  description = "string ||| Id of Cloud Router"
}
