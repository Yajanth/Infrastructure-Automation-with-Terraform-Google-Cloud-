 
terraform {
 required_providers {
   google = {
     source = "hashicorp/google"
     version = "4.53.0"
   }
 }
}
 
provider "google" {
 project     = var.project_id
 region      = var.region
zone        = var.zone
}
 
module "instances" {
source     = "./modules/instances"
}

module "storage" {
 source     = "./modules/storage"
}

terraform {
 backend "gcs" {
  bucket  = var.bucket
  prefix  = "terraform/state"
 }
}

module "vpc" {
    source  = "terraform-google-modules/network/google"
    version = "~> 6.0"

    project_id   = "qwiklabs-gcp-01-fd9ad5b2add6"
    network_name = "tf-vpc-108109"
    routing_mode = "GLOBAL"

    subnets = [
        {
            subnet_name           = "subnet-01"
            subnet_ip             = "10.10.10.0/24"
            subnet_region         = "us-west1"
        },
        {
            subnet_name           = "subnet-02"
            subnet_ip             = "10.10.20.0/24"
            subnet_region         = "us-west1"
            subnet_private_access = "true"
            subnet_flow_logs      = "true"
            description           = "This subnet has a description"
        }
    ]
}
resource "google_compute_firewall" "tf-firewall" {
 name    = var.firewall
 network = "projects/qwiklabs-gcp-01-fd9ad5b2add6/global/networks/tf-vpc-108109"
 
 allow {
   protocol = "tcp"
   ports    = ["80"]
 }
 
 source_ranges = ["0.0.0.0/0"]
}