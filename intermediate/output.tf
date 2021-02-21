#Output the IP Address of the Container
output "ip_address" {
  value       = "${docker_container.container.ip_address}"
  description = "The IP for the container."
}

#Output the Name of the Container
output "container_name" {
  value       = "${docker_container.container.name}"
  description = "The name of the container."
}
