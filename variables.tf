variable "public_subnets" {
  type        = list(string)
  description = "Network ranges for public subnets created in the VPC. Able to access the internet through Default Internet gateway."
  default     = ["10.0.101.0/24"]
}

variable "private_subnets" {
  type        = list(string)
  description = "Network ranges for private subnets created in the VPC. Able to access the internet through Cloud Router and NAT Gateway."
  default     = ["10.0.102.0/24"]
}
