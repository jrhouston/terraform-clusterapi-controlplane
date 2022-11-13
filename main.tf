variable "kubernetes_version" {
  type = string
  description = "Cluster Kubernetes version"
}

variable "cluster_network" {
  type = object({
    api_service_port = optional(number)
    serviceDomain = optional(string)
    services = optional(object({
      cidr_blocks = list(string)
    }))
    pods = optional(object({
      cidr_blocks = list(string)
    }))
  })
  default = {}
}

resource null_resource example {
  provisioner "local-exec" {
    command = "echo test configuration"
  }
}

resource null_resource example2 {
  depends_on = [
    null_resource.example
  ]
  provisioner "local-exec" {
    command = "echo test configuration 2"
  }
}

output "control_plane_endpoint_host" {
  value = "localhost"
}

output "control_plane_endpoint_port" {
  value = 8000
}
