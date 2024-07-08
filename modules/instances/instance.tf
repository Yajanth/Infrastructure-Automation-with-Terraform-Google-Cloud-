resource "google_compute_instance" "tf-instance-1" {
 name         = var.instance1
 machine_type = var.machine_type
 zone         = var.zone
 metadata_startup_script = var.metadata_startup_script
 allow_stopping_for_update = var.allow_stopping_for_update
 
 boot_disk {
   initialize_params {
     image = var.compute_disk_image
   }
 }
 
 network_interface {
  network = var.vpc_name
  subnetwork="subnet-01"
 }
}

 
resource "google_compute_instance" "tf-instance-2" {
 name         = var.instance2 
 machine_type = var.machine_type
 zone         = var.zone
 metadata_startup_script = var.metadata_startup_script
 allow_stopping_for_update = var.allow_stopping_for_update
 
 boot_disk {
   initialize_params {
     image = var.compute_disk_image
   }
 }
 
 network_interface {
  network = var.vpc_name
  subnetwork="subnet-02"
 }
}