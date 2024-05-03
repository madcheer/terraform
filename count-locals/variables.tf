variable "ami_id" {
  type = string
  default = "ami-0f3c7d07486cad139"
}

variable "instance_type" {

    type = string
    default = "t2.micro"
  
}

variable "instance_names" {
    type = list
    default = ["mongodb","redis","mysql","rabitmg","catalogue","user","cart","shipping","payment","dispatch","web"]
}


variable "sg_name" {
  type = string
  default = "roboshop_all"

}

variable "sg_description" {
  type = string
  default = "allow all ports"
}

variable "inbound_from_port" {
    type = number
    default = 0
  
}

variable "cidr_blocks" {
    type = list
    default = ["0.0.0.0/0"]
  
}

variable "tags" {

    type = map
    default = {
        
         Name = "Hello Terraform"
         Environment ="DEV"
         Terraform = "true"
    }
}

variable "zone_id" {
  type = string
  default = "Z01400561BX3IGIUHNL7A"
}