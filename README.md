# Infrastructure Automation with Terraform on Google Cloud 

## Overview:
This project demonstrates the automation of backend Infrastructure on Google cloud using Terraform.
It covers the deploynment of VM Instances, storage,VPC and Firewalls.

## Prerequisites
- Google cloud Account
- Terraform 
- Google Cloud SDK 

---
## Modules and Resources
- Instances Module
Creates VM instances based on the configurations in ./modules/instances.

- Storage Module
Creates a Google Cloud Storage bucket for the remote backend in ./modules/storage.

- VPC Module
Utilizes the Terraform Google Network module to create VPC and subnets.
- Firewall
Sets up a firewall rule to allow TCP traffic on port 80.
