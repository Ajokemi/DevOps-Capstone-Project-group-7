terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "~> 3.0.1"
    }
  }
}

provider "docker" {
  # Terraform auto-detects Docker on all platforms:
  # Windows  → npipe:////.//pipe//docker_engine
  # Mac/Linux → unix:///var/run/docker.sock
}
