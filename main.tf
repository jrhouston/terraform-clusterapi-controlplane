variable "kubernetes_version" {
  type = string
  description = "Cluster Kubernetes version"
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
