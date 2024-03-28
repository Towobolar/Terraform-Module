module "vpc" {
  source   = "../module/vpc"
  vpc_name = var.vpc_name
  vpc_cidr = var.vpc_cidr
}

module "security-group" {
  source = "../module/security-group"
  security_group_name = var.security_group_name
  vpc_id = var.vpc_name
  ingress_protocol = var.ingress_protocol
  ingress_from_port = var.ingress_from_port
  ingress_to_port = var.ingress_to_port
  egress_from_port = var.egress_from_port
  egress_to_port = var.egress_to_port
  egress_protocol = var.egress_protocol
}
