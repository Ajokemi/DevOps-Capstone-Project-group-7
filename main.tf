resource "docker_image" "nginx" {
	name         = "nginx:latest"
	keep_locally = false
}

resource "docker_container" "nginx" {
	image = docker_image.nginx.image_id
	name = "DevOps-group7-capstone-project-container"
	ports {
		internal = 5000
		external = 5001
	}
}
