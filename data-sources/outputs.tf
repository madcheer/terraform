output "ami_id" {
  value = data.aws_ami.centos8.id
     
}

output "Amazon_Linux2_ami" {
  value = data.aws_ami.Amazon_Linux2.id
     
}

output "vpcinfo" {
  value = data.aws_vpc.default
}
