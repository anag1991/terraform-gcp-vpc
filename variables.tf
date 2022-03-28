variable "vpc_name" {
  description = "Please provide VPC name to bulid a VPC"
  type        = string
}

variable "region" {
  description = "Please provide a region to bulid a VPC"
  type        = string
}

variable "zone" {
  description = "Please provide a zone to bulid a VPC"
  type        = string
}

variable "firewall_name" {
  description = "Please provide a firewall name to bulid a VPC"
  type        = string
}

variable "network_tags" {
  description = "Please provide a network tag name to bulid a VPC"
  type        = list(any)
}


