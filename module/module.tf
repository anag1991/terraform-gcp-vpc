module "vpc" {
  source  = "../"
    billing_acct  = "My Billing Account"
    project_name  = "testmodule"
    vpc_name      = "vpcg"
    region        = "us-west1"
    zone          = "us-west1-a"
    firewall_name = "fw-allow-http"
    network_tags  = ["webserver"] 
}