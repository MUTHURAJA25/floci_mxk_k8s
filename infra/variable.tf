variable "cluster_name" {
  default = "fintech-eks"
}

variable "node_group_name" {
  default = "fintech-workers"
}

variable "instance_type" {
  default = "t3.medium"
}

variable "desired_size" {
  default = 2
}

variable "min_size" {
  default = 1
}

variable "max_size" {
  default = 3
}