# Download the latest nginx image
resource "docker_image" "nginx" {
  name = "docker.io/nginx:latest"
}

# Start a container
resource "docker_container" "nginx" {
  name  = "nginx"
  image = "${docker_image.nginx.latest}"
  ports {
    internal = "80"
    external = "9090"
  }
}
