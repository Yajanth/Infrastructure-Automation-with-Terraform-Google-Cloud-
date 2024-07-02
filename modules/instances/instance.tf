resource "google_compute_instance" "tf-instance-1" {
 name         = "tf-instance-1"
 machine_type = "e2-micro"
 zone         = var.zone
metadata_startup_script = <<-EOT
       #!/bin/bash
   EOT
allow_stopping_for_update = true
 
 
 boot_disk {
   initialize_params {
     image = "debian-cloud/debian-11"
   }
 }
 
 network_interface {
  network = "tf-vpc-108109"
  subnetwork="subnet-01"
 }
}

 
resource "google_compute_instance" "tf-instance-2" {
 name         = "tf-instance-2"
 machine_type = "e2-micro"
 zone         = var.zone
metadata_startup_script = <<-EOT

      #!/bin/bash

  EOT

allow_stopping_for_update = true
 
 boot_disk {
   initialize_params {
     image = "debian-cloud/debian-11"
   }
 }
 
 network_interface {
  network = "default"
  subnetwork="subnet-02"
 }
}