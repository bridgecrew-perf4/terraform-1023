# Define variables
variable "env" {
  description = "env: dev or prod"
  default     = "dev"
}

variable "image_name" {
  type        = "map"
  description = "Image for container"
  default     = {
    dev   = "docker.io/nginx:latest" 
    prod  = "docker.io/nginx:alpine" 
  }
}

variable "container_name" {
  type        = "map"
  description = "Name of the container"
  default     = {
    dev  = "nginx_dev"
    prod = "nginx_prod"
  }
}

variable "int_port" {
  description = "Internal port of the container"
  default     = "80"
}

variable "ext_port" {
  type        = "map"
  description = "External port of the container"
  default     = {
    dev  = "9091"
    prod = "9090"
  }
}
