module "global_vpc" {
  source  = "../"
    billing_acct  = "My Billing Account"
    project_name  = "testmodule"
    vpc_name      = "vpcg"
    region        = "us-west4"
    zone          = "us-west4-a"
    firewall_name = "fw-allow-http"
    network_tags  = ["webserver"] 
}