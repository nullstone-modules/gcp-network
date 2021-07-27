output "vpc_name" {
  value       = module.gcp-network.network_name
  description = "string ||| The name of the VPC being created"
}

output "subnets" {
  value       = module.gcp-network.subnets
  description = "map ||| A map with keys of form subnet_region/subnet_name and values being the outputs of the google_compute_subnetwork resources used to create corresponding subnets."
}

output "public_subnet_names" {
  value = [
    for subnet_name in module.gcp-network.subnets_names : subnet_name if length(regexall("((.+)-public-[0-9]+)", subnet_name)) > 0
  ]
  description = "list(string) ||| The names of the public subnets being created"
}

output "private_subnet_names" {
  value = [
    for subnet_name in module.gcp-network.subnets_names : subnet_name if length(regexall("((.+)-private-[0-9]+)", subnet_name)) > 0
  ]
  description = "list(string) ||| The names of the private subnets being created"
}

output "public_subnets_ids" {
  value = [
    for subnet_id in module.gcp-network.subnets_ids : subnet_id if length(regexall("((.+)-public-[0-9]+)", subnet_id)) > 0
  ]
  description = "list(string) ||| The IDs of the public subnets being created"
}

output "private_subnets_ids" {
  value = [
    for subnet_id in module.gcp-network.subnets_ids : subnet_id if length(regexall("((.+)-private-[0-9]+)", subnet_id)) > 0
  ]
  description = "list(string) ||| The IDs of the private subnets being created"
}

output "cloud_nat" {
  value       = google_compute_router_nat.nat.id
  description = "string ||| Id of Cloud NAT"
}

output "cloud_router" {
  value       = google_compute_router.router.id
  description = "string ||| Id of Cloud Router"
}
