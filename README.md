# GCP Three-tier Architecture Using Terraform

This project builds a three-tier application on GCP platform. This submodule will create a global VPC through terraform in GCP.

It supports creating:

- The Global VPC in every region.

- Subnets within the VPC automatically.

- Route tables and internet gateway and nat gateway automatically.



## Table of Contents
* [Usage](#usage)
* [Providers](#providers)
* [Examples](#examples)
* [Inputs](#inputs)
* [Outputs](#outputs)
* [File Structure](#file-structure)
* [Initializing Terraform](#initializing-terraform)


## Usage

Basic usage of this submodule is as follows:

```hcl
module "vpc" {
    source  = "../"
    billing_acct = "My Billing Account"
    project_name = "testmodule"
    vpc_name = "vpcg"
    region = "us-central1"
    zone = "us-central1-c"
    firewall_name = "fw-allow-http"
    network_tags = ["webserver"]
       name    = "vpc_global"
       env     = "dev"
       team    = "devops_gcp"
   
   routing_mode = "GLOBAL"
   
   }
}
```
## Providers

| Name | Version |
|----------|----------|
| Terraform | v1.1.7 |
| Google Cloud SDK | 378.0.0 |

## Examples

![image](https://user-images.githubusercontent.com/92606341/160723319-1b972f58-9829-4075-a56b-74a75f6baf30.png)
![image](https://user-images.githubusercontent.com/92606341/160867821-c6d5f419-fd19-4ed9-a947-d7b46938b965.png)


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
| project\_name | The VPC project name |
| project\_id | VPC project id |
| vpc\_name | The name of the VPC being created |
| firewall\_name | The URI of the firewall being created |
| network\_name | The name of the VPC being created |

## File Structure

The project has the following folders:

| Folder Name | Description |
| ------------|-------------|
| /vpc.tf | This folder has a block of resource to create a Global VPC and a block of resource to enable the GCP service |
| /variables.tf | All the variables for the module |
| /provider.tf | This folder provides region and zone information for the resource |
| /output.tf | The outputs of the module |
| /firewall.tf | This folder contains the firewall rules |
| /backend.tf | The bucket and DB will be created manually |
| /README.md | This file |

## Initializing the Terraform

To install and create the resources, the following commands will be performed the initialize the the Terraform:

| The command | Description |
|-------------|-------------|
|`terraform init`| To get the plugins and initialize |
| `terraform plan`| To see the infrastructure plan |
| `terraform apply`| To apply the infrastructure build |
| `terraform validate` | To check the syntax |
| `terraform destroy` | To destroy the built infrastructure |
