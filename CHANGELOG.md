# 0.3.8 (Nov 27, 2024)
* Remove terraform flapping with subnets.

# 0.3.7 (Nov 27, 2024)
* Add missing parameters for serverless access.

# 0.3.6 (Nov 27, 2024)
* Enable access to service networking service agent.

# 0.3.5 (Nov 27, 2024)
* Upgrade google Terraform provider.

# 0.3.4 (Nov 27, 2024)
* Fix reference to network when creating `google_service_networking_connection`.

# 0.3.3 (Mar 21, 2024)
* Enable `servicenetworking.googleapis.com` to ensure Private Service Access works during the first launch in a Google project.

# 0.3.2 (Mar 21, 2024)
* Upgrade providers to latest.

# 0.3.1 (Mar 21, 2024)
* Enable Private Service Access with a service networking connection to Google Cloud services.

# 0.3.0 (Jun 09, 2023)
* Added Serverless VPC Access Connector and associated subnetwork.

# 0.2.3 (May 10, 2023)
* Enable Google Compute API.

# 0.2.2 (Apr 20, 2023)
* Increased default public and private subnets to larger ranges (`/16` instead of `/24`).

# 0.2.1 (Mar 22, 2023)
* Add missing `.terraform.lock.hcl`.

# 0.2.0 (Mar 22, 2023)
* Add `.terraform.lock.hcl`.
