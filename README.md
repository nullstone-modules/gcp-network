# gcp-network
Nullstone module to launch a standard GCP network. This module will create a public and private subnet in a provided region.

Public subnet access internet through Default Internet gateway and private subnet access internet through Cloud Router and NAT Gateway.

## Inputs

- `public_subnets: list(string)`
  - Network ranges for public subnets created in the VPC. Able to access the internet through Default Internet gateway.
  - Default: `["10.0.101.0/24", "10.0.102.0/24"]`
- `private_subnets: list(string)`
  - Network ranges for private subnets created in the VPC. Able to access the internet through Cloud Router and NAT Gateway.
  - Default: `["10.0.103.0/24", "10.0.104.0/24"]`
  
## Outputs

- `vpc_name: string` 
  - The name of the VPC being created

- `subnets: map` 
  - A map with keys of form subnet_region/subnet_name and values being the outputs of the google_compute_subnetwork resources used to create corresponding subnets.

  Sample subnet map for private subnet:
  ```HCL
  {
    "us-west1/private-subnet-1" = {
        "creation_timestamp" = "2021-07-21T20:27:27.850-07:00"
        "description" = ""
        "fingerprint" = tostring(null)
        "gateway_address" = "10.0.103.1"
        "id" = "projects/experimental-320320/regions/us-west1/subnetworks/private-subnet-1"
        "ip_cidr_range" = "10.0.103.0/24"
        "log_config" = tolist([])
        "name" = "private-subnet-1"
        "network" = "https://www.googleapis.com/compute/v1/projects/experimental-320320/global/networks/nullstone-vpc"
        "private_ip_google_access" = true
        "private_ipv6_google_access" = "DISABLE_GOOGLE_ACCESS"
        "project" = "experimental-320320"
        "region" = "us-west1"
        "secondary_ip_range" = tolist([])
        "self_link" = "https://www.googleapis.com/compute/v1/projects/experimental-320320/regions/us-west1/subnetworks/private-subnet-1"
        "timeouts" = null /* object */
    }
  }
  ```

- `subnets_names: list(string)`
  - The names of the subnets being created
  
- `subnets_ids: list(string)`
  - The IDs of the subnets being created
  
- `cloud_nat: string` 
  - Id of Cloud NAT (For example: `experimental-320320/us-west1/nullstone-vpc-router/nullstone-vpc-nat`)

- `cloud_router: string` 
  - Id of Cloud Router  (For example: `projects/experimental-320320/regions/us-west1/routers/nullstone-vpc-router`)