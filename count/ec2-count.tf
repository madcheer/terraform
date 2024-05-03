resource "aws_instance" "web" {
    ami = var.ami_id
    count = length(var.instance_names)
    instance_type = var.instance_names[count.index] == "mongodb" ||  var.instance_names[count.index] == "mysql" || var.instance_names[count.index] == "shipping" ? "t3.small" : "t2.micro"
    vpc_security_group_ids = [aws_security_group.roboshop_all.id]

    tags={
          Name = var.instance_names[count.index]
          Environment = "DEV"
          Terraform = "true"
         }

}

resource "aws_route53_record" "www" {
  count = 11
  zone_id = var.zone_id
  name    = "${var.instance_names[count.index]}.madcheer.online"  #interpollation variable mixed with static content
  type    = "A"
  ttl     = 1
  records = [var.instance_names[count.index] == "web" ? aws_instance.web[count.index].public_ip : aws_instance.web[count.index].private_ip]
}
