variable "region" {
  default = "us-west1"
  description = "Region where instance should be created"
  type = string
}
 
variable "zone" {
   default = "us-west1-c"
   description = "Zone where instance should be created"
   type = string
}
 
variable "project_id" {
  default = "qwiklabs-gcp-01-fd9ad5b2add6"
  description = "ID of the project under which the resource is being provisioned"
  type = string
}
 
variable "bucket" {
  default = "tf-bucket-232453"
  description = "Unique name of the bucket to create for the backend"
  type = string
}
 

 
variable "vpc_name" {
  default = "<dynamic VPC Name>"
  type = string
  description = "Name of the VPC network to attach instances"
}
variable "firewall" {
  default = "tf-firewall"
  description = "Namr of the firewall for VPC Network"
  
}