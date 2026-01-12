variable "public_subnets" {
  type        = list(string)
  description = "Network ranges for public subnets created in the VPC. Able to access the internet through Default Internet gateway."
  default     = ["10.101.0.0/16"]
}

variable "private_subnets" {
  type        = list(string)
  description = "Network ranges for private subnets created in the VPC. Able to access the internet through Cloud Router and NAT Gateway."
  default     = ["10.102.0.0/16"]
}

variable "internal_subdomain" {
  type        = string
  default     = ""
  description = <<EOF
When specified, creates a private Google Cloud DNS zone that allows internal DNS resolution within the VPC.
EOF
}

locals {
  connector_subnet = "10.128.0.0/28"
}
