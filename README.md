# Terraform VPC Module

This submodule is part of the the `terraform-gcp` module. It creates a global VPC using terraform on GCP platform.

It supports creating:

1- Global VPC Configure subnets automatically. This module should be able to create project.

2- An Auto Scaling Group. Auto Scaling Group is using minimum 1 instance. This Auto Scaling Group is creating its Load Balancer. 

3- CloudSQL to use with wordpress autoscaling group.

## Table of Contents
* [Usage](#general-information)
* [Technologies Used](#technologies-used)
* [Features](#features)
* [Inputs](#inputs)
* [Outputs](#outputs)

## Usage

Basic usage of this submodule is as follows:

```hcl
module "vpcglobal" {
    source  = "google_compute_network"
    version = "~> 3.0"
    ##because in provider file we defined 2 versions
    
    project_id   = "p123456789"
    network_name = "webserver"
    ## Or should I write google_compute_network.vpcglobal
    routing_mode = "GLOBAL"
  
}
```


## Technologies Used
provider "registry.terraform.io/hashicorp/google" {
  version = "4.15.0"
}

provider "registry.terraform.io/hashicorp/null" {
  version = "3.1.1"
}

## Features
1- Creates subnets automatically in every region.

2- Creates route tables and internet gateway automatically.

3-### globally accessible?


## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| vpc\_name | The name of the VPC | `string` | n/a | yes |
| region | The region where the VPC is built | `string` | n/a | yes |
| zone | The zone where the VPC is built | `string` | n/a | yes |
| firewall\_name | The name of the firewall to built VPC | `string` | n/a | yes |
| network\_tags | The network tag name of the VPC is built | `list` | n/a | yes |
| labels | The labels to build the VPC | `map` | n/a | yes |


## Outputs

| Name | Description |
|------|-------------|
| network | The created network |
| network\_name | The name of the VPC being created |
| project\_name | The VPC project name |
| project\_id | VPC project id |
| vpc\_name | The name of the VPC being created |
| firewall\_name | The URI of the firewall being created |



