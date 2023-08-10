resource "google_compute_ssl_certificate" "my_ssl_cert" {
  name        = "my-ssl-certificate"
  certificate = file("path/to/ssl/certificate.pem")
  private_key = file("path/to/ssl/private-key.pem")
}

resource "google_compute_target_https_proxy" "my_target_proxy" {
  name              = "my-target-proxy"
  ssl_certificates = [google_compute_ssl_certificate.my_ssl_cert.self_link]
  url_map           = google_compute_url_map.my_url_map.self_link
}
