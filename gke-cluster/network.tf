resource "google_compute_network" "my_network" {
  name                    = "my-vpc-network"
  auto_create_subnetworks = false
}

resource "google_compute_subnetwork" "my_subnet" {
  name                     = "my-subnet"
  network                  = google_compute_network.my_network.name
  ip_cidr_range            = "10.0.0.0/24"
  region                   = "europe-west1"
}

resource "google_compute_firewall" "allow_http" {
  name    = "allow-http"
  network = google_compute_network.my_network.name

  allow {
    protocol = "tcp"
    ports    = ["80"]
  }

  source_ranges = ["0.0.0.0/0"]
}
