# 0.4.1 (Dec 17, 2025)
* Added `vpc_access_connector_id` output for downstream configuration.

# 0.4.0 (Dec 10, 2025)
* Migrate from `terraform` to `tofu`.

# 0.3.15 (Dec 02, 2025)
* Added `private_service_cidrs` output for Private services access.

# 0.3.14 (Oct 22, 2025)
* Restore service networking identiy creation.

# 0.3.13 (Dec 11, 2024)
* Fixed broken reference introduced in 0.3.12.

# 0.3.12 (Dec 04, 2024)
* Unable to create service identity for service-networking. Disabling for now.

# 0.3.11 (Dec 04, 2024)
* Fix reference project_id.

# 0.3.10 (Dec 03, 2024)
* Create project service identity for service-networking.

# 0.3.9 (Dec 03, 2024)
* Wait for service networking API enable before granting permissions.

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
