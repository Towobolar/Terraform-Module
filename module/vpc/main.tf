/***************************
*     create vpc          *
***************************/

resource "aws_vpc" "three-tier-vpc" {
  cidr_block       = var.vpc_cidr
  instance_tenancy = "default"

  tags = {
    terraform = "true"
    Name      = var.vpc_name
  }
}