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
