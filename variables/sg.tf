resource "aws_security_group" "roboshop-all" { # this is terraform name for terraform reference
  name        = var.sg_name
  description = var.sg_description
# vpc_id      = aws_vpc.main.id

  ingress {
    description      = "Allow all ports"
    from_port        = var.inbound-from-port #allowing all ports
    to_port          = 0
    protocol         = "tcp"
    cidr_blocks      = var.cidr_blocks
    # ipv6_cidr_blocks = [aws_vpc.main.ipv6_cidr_block]
   }

   egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    # ipv6_cidr_blocks = ["::/0"]
  }

  tags = {
    Name = "roboshop-all-aws"
  }
}

