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