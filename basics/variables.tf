# Define variables
variable "image_name" {
  description = "Image for container"
  default     = "docker.io/nginx:latest" 
}

variable "container_name" {
  description = "Name of the container"
  default     = "nginx"
}

variable "int_port" {
  description = "Internal port of the container"
  default     = "80"
}

variable "ext_port" {
  description = "External port of the container"
  default     = "9090"
}
