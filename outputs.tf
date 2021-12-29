output "vpc_name" {
  value       = local.resource_name
  description = "string ||| The name of the VPC being created"
}

output "public_subnet_names" {
  value       = google_compute_subnetwork.public.*.name
  description = "list(string) ||| The names of the public subnets"
}

output "public_subnets_ids" {
  value       = google_compute_subnetwork.public.*.id
  description = "list(string) ||| The IDs of the public subnets"
}

output "public_cidrs" {
  value       = google_compute_subnetwork.public.*.ip_cidr_range
  description = "list(string) ||| The network ranges of the public subnets"
}

output "private_subnet_names" {
  value       = google_compute_subnetwork.private.*.name
  description = "list(string) ||| The names of the private subnets"
}

output "private_subnets_ids" {
  value       = google_compute_subnetwork.private.*.id
  description = "list(string) ||| The IDs of the private subnets"
}

output "private_cidrs" {
  value       = google_compute_subnetwork.private.*.ip_cidr_range
  description = "list(string) ||| The network ranges of the private subnets"
}

output "nat_id" {
  value       = google_compute_router_nat.this.id
  description = "string ||| Id of Cloud NAT"
}

output "router_id" {
  value       = google_compute_router.this.id
  description = "string ||| Id of Cloud Router"
}
