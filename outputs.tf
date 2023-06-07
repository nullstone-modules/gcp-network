output "vpc_id" {
  value       = google_compute_network.this.id
  description = "string || The ID of the created VPC in the form 'projects/(project-id)/global/networks/(vpc-name)'."
}

output "vpc_name" {
  value       = local.resource_name
  description = "string ||| The name of the created VPC."
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

output "public_subnet_self_links" {
  value       = google_compute_subnetwork.public.*.self_link
  description = "list(string) ||| The self_link of each public subnet"
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

output "private_subnet_self_links" {
  value       = google_compute_subnetwork.private.*.self_link
  description = "list(string) ||| The self_link of each private subnet"
}

output "nat_id" {
  value       = google_compute_router_nat.this.id
  description = "string ||| Id of Cloud NAT"
}

output "router_id" {
  value       = google_compute_router.this.id
  description = "string ||| Id of Cloud Router"
}

output "serverless_vpc_access_connector" {
  value       = google_vpc_access_connector.serverless.name
  description = "string ||| The name of the VPC Access Connector that should be used by serverless to access the private subnetworks."
}
