# Déclarer le provider Docker
terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "~> 3.0"
    }
  }
}

provider "docker" {}

# Ressource 1 : Télécharger l'image Nginx
resource "docker_image" "nginx" {
  name         = "nginx:alpine"
  keep_locally = true
}

# Ressource 2 : Créer un container Nginx
resource "docker_container" "web" {
  name  = "terraform-nginx"
  image = docker_image.nginx.image_id

  ports {
    internal = 80
    external = 7777
  }
}
