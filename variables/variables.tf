variable "ami_id" {

type = string
default = "ami-0f3c7d07486cad139"
 
}

variable "ami_type" {

type = string
default = "t2.micro"
  
}

variable "tags" {
    type = map
default = {
    Name = "Hello Terraform"
    Project="Roboshop"
    Environment="DEV"
    Componenet="Web"
    terraform="true"
}
}

variable "sg_name" {
  type=string
  default = "roboshop_all"

}

variable "sg_description" {
  type = string
  default = "Allowing all ports"
}

variable "inbound_from_port" {
  type = number
  default = 0
  }

  variable "cidr_blocks" {
    type = list
    default = ["0.0.0.0/0"]
    
  }