variable "kubernetes_version" {
  type = string

  description = "Cluster Kubernetes version"
}

variable "cluster_name" {
  type = string

  description = "Cluster name"
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

  description = "Cluster network configuration"
}