# Create a new Web Droplet in the nyc2 region
resource "digitalocean_droplet" "terraform_droplet" {
  image     = "ubuntu-22-04-x64"
  name      = "terraform"
  region    = "fra1"
  size      = "s-1vcpu-512mb-10gb"
  ssh_keys  = [data.digitalocean_ssh_key.terraform.id]
}