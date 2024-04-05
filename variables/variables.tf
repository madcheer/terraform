variable "ami_id" {
    type = string
    default = "ami-0f3c7d07486cad139"
  }

  variable "ami_type" {
    type = string
    default = "t2.micro"
      
  }

variable "tags"{
     type = map
     default ={
       Name = "Hello Terraform"
       Project = "Roboshop"
       Environmenet = "DEV"
       Componenet = "WEB"
       terraform = "true" 

     }

}

variable "sg-name" {
  type = string
  default = "roboshop-all"
}

variable "sg-description" {
  type = string
  default = "allowing all ports"
}

variable "inbound-from-port" {
  type = number
  default = 0
}

variable "cidr_blocks" {
    type = list  
    default = ["0.0.0.0/0"]
}