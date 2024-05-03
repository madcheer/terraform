resource "aws_instance" "web" {
    ami = var.ami_id
    #count = 11
    count = length(var.instance_names)    
    instance_type = local.instance_type
    vpc_security_group_ids = [aws_security_group.roboshop_all.id]

    tags={
          Name = var.instance_names[count.index]
          Environment = "DEV"
          Terraform = "true"
         }

}

resource "aws_route53_record" "www" {
  #count = 11
  count = length(var.instance_names)
  zone_id = var.zone_id
  name    = "${var.instance_names[count.index]}.madcheer.online"  #interpollation variable mixed with static content
  type    = "A"
  ttl     = 1
  records = [local.ip]
}
