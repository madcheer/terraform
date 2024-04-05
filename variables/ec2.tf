resource "aws_instance" "web" {
  ami           = var.ami_id
  instance_type = var.ami_type
  
  tags = var.tags
}