variable "project_id" {
  type        = string
  description = "Id of GCP project."
}

variable "network_name" {
  type        = string
  description = "Name of VPC network."
}

variable "subnet_region" {
  type        = string
  description = "Region where subnet will be provisioned."
  default     = "us-west1"
}

variable "public_subnets" {
  type        = list(string)
  description = "Network ranges for public subnets created in the VPC. Able to access the internet through Default Internet gateway."
  default     = ["10.0.101.0/24", "10.0.102.0/24"]
}

variable "private_subnets" {
  type        = list(string)
  description = "Network ranges for private subnets created in the VPC. Able to access the internet through Cloud Router and NAT Gateway."
  default     = ["10.0.103.0/24", "10.0.104.0/24"]
}