module "vpc" {
  source        = "../"
  billing_acct  = "My Billing Account"
  project_name  = "testmodule"
  vpc_name      = "vpcg"
  region        = "us-central1"
  zone          = "us-central1-c"
  firewall_name = "fw-allow-http"
  network_tags  = ["webserver"]
}

output "vpc_name" {
  value = module.vpc.vpc_name
}

output "firewall_name" {
  value = module.vpc.firewall_name
}

output "network_name" {
  value = module.vpc.network_name
}