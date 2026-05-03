output "container_name" {
  description = "Name of the running container"
  value       = docker_container.nginx.name
}

output "access_url" {
  description = "Open this in your browser to see nginx"
  value       = "http://localhost:${var.external_port}"
}

output "image_id" {
  description = "ID of the pulled Docker image"
  value       = docker_image.nginx.image_id
}
