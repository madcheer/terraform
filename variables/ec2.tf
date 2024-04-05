resource "aws_instance" "web" {
  ami           = var.ami_id
  instance_type = var.ami_type
  vpc_security_group_ids = [aws_security_group.roboshop-all.id]
  
  tags = var.tags
}