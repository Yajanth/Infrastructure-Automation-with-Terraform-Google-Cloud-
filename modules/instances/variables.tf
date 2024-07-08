variable "region" {
  default = "us-west1"
}
 
variable "zone" {
   default = "us-west1-c"
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
  
}

variable "vpc_name" {
  default = "<dynamic VPC Name>"
  type = string
  description = "Name of the VPC network to attach instances"
}