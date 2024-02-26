resource "aws_instance" "web" {
  ami           = "ami-08e7a9a48c6b1b4a2"
  instance_type = "t3.micro"

  tags = {
    Name = "HelloTerraform"
  }
}