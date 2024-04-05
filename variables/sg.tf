resource "aws_security_group" "roboshop-all" {
    name = var.sg-name
    description = var.sg-description

    ingress  {
            description = "allow all ports"
            from_port = 0
            to_port = 0
            protocol = "tcp"
            cidr_blocks = var.cidr_blocks
    }
  
    egress {
             
              from_port   = 0
              to_port     = 0
              protocol    = "-1"
              cidr_blocks = ["0.0.0.0/0"]       

    }
    tags = {
      name = "roboshop-all-aws"
    }
}