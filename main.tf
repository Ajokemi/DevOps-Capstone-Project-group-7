resource "docker_image" "nginx" {
  name         = var.nginx_image
  keep_locally = false
}

resource "docker_container" "nginx" {
  image    = docker_image.nginx.image_id
  name     = var.container_name
  must_run = true
  restart  = "unless-stopped"

  ports {
    internal = var.internal_port
    external = var.external_port
  }
}
