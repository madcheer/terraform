resource "aws_security_group" "roboshop_all" {
    name = var.sg_name
    description = var.sg_description

ingress{
    from_port        = var.inbound_from_port
    to_port          = 0
    protocol         = "tcp"
    cidr_blocks      = var.cidr_blocks
    #ipv6_cidr_blocks = ["::/0"]
}
  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = var.cidr_blocks
   # ipv6_cidr_blocks = ["::/0"]
  }
  
}