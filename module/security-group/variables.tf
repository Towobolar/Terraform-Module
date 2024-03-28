variable "security_group_name" {
  description = "security group name"
  type = string
}

variable "vpc_id" {
  description = "vpc id for security group"
  type = string
}

variable "ingress_protocol" {
  description = "ingress protocol"
  type = string
}

variable "ingress_from_port" {
  description = "ingress from port"
  type = number
}

variable "ingress_to_port" {
  description = "ingress to port"
  type = number
}

variable "egress_from_port" {
  description = "egress from port"
  type = number
}


variable "egress_to_port" {
  description = "egress from port"
  type = number
}


variable "egress_protocol" {
  description = "egress protocol value"
  type = string
}