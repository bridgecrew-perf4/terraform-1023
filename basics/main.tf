# Download the latest nginx image
resource "docker_image" "image" {
  name = "${var.image_name}"
}

# Start a container
resource "docker_container" "container" {
  name  = "${var.container_name}"
  image = "${docker_image.image.latest}"
  ports {
    internal = "${var.int_port}"
    external = "${var.ext_port}"
  }
}
