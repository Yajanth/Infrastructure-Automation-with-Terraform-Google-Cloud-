variable "region" {
  default = "us-west1"
  type = string
}
 
variable "zone" {
   default = "us-west1-c"
   type = string
}
 
variable "instance1" {
  default = "<dynamic Instance Name>"
  description = "Name of the instance"
  type = string
}

variable "instance2" {
  default = "<dynamic Instance Name>"
  description = "Name of the instance"
  type = string
}

variable "compute_disk_image" {
  default = "debian-cloud/debian-11"
  type = string
}

variable "machine_type" {
  type        = string
  default     = "e2-micro"
  description = "The GCE disk type. May be set to \"e2-small\", \"e2-micro\"."
}

variable "metadata_startup_script" {
  default = <<-EOT
       #!/bin/bash
   EOT

   description = "Startup script that should run in the VM when the instance is created"
}

variable "allow_stopping_for_update" {
  default = true
  type = bool
  description = "If true, allows Terraform to stop the instance to update its properties. If you try to update a property that requires stopping the instance without setting this field, the update will fail."

  
}

variable "vpc_name" {
  default = "tf-vpc-108109"
  type = string
  description = "Name of the VPC network to attach instances"
}