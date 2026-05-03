variable "container_name" {
  description = "Name of the Docker container"
  type        = string
  default     = "DevOps-group7-capstone-project-container"
}

variable "nginx_image" {
  description = "Docker image to use"
  type        = string
  default     = "nginx:latest"
}

variable "external_port" {
  description = "Port exposed on your Windows machine"
  type        = number
  default     = 5001
}

variable "internal_port" {
  description = "Port nginx listens on inside the container"
  type        = number
  default     = 80
}
