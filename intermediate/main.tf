# Download the latest nginx image
resource "docker_image" "image" {
  name = "${lookup(var.image_name,var.env)}"
}

# Start a container
resource "docker_container" "container" {
  name  = "${lookup(var.container_name,var.env)}"
  image = "${docker_image.image.latest}"
  ports {
    internal = "${var.int_port}"
    external = "${lookup(var.ext_port,var.env)}"
  }
}
