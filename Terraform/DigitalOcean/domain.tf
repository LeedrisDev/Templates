# Get the domain
data "digitalocean_domain" "domain" {
  name = "leedrisdev.engineer"
}

# Create a DNS record for the Web Droplet
resource "digitalocean_record" "terraform_record" {
  domain = data.digitalocean_domain.domain.name
  type   = "A"
  name   = "terraform"
  value  = digitalocean_droplet.terraform_droplet.ipv4_address
  ttl    = 3600
}