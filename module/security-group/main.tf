/***********************************************
*     web server security group                *
************************************************/

resource "aws_security_group" "webserver-sg" {
  name        = var.security_group_name
  description = "allow inbound ssh and https traffic"
  vpc_id      = var.vpc_id

  ingress {
    protocol    = var.ingress_protocol
    self        = true
    from_port   = var.ingress_from_port
    to_port     = var.ingress_to_port
    cidr_blocks = ["0.0.0.0/32"]
  }

  egress {
    from_port   = var.egress_from_port
    to_port     = var.egress_to_port
    protocol    = var.egress_protocol
    cidr_blocks = ["0.0.0.0/32"]
  }
}