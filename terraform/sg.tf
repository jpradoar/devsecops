resource "aws_security_group" "allow_ssh" {
  name        = "sg_allow_ssh_demo"
  description = "Allow SSH inbound traffic"
  vpc_id      = var.vpc_id

  ingress {
    description      = "All for demos"
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["99.99.99.99/32"]
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["99.99.99.99/32"]
  }
}
