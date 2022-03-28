output "vpc_name" {
  value = google_compute_network.vpcglobal.name
}

output "firewall_name" {
  value = google_compute_firewall.allow-http.name
}

output "network_name" {
  value = google_compute_firewall.allow-http.network
}

