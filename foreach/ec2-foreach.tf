resource "aws_instance" "web" {
    for_each = var.instance_names
    ami = var.ami_id
   # count = length(var.instance_names)
    instance_type = each.value
    vpc_security_group_ids = [aws_security_group.roboshop_all.id]

    tags={
          Name = each.key
          Environment = "DEV"
          Terraform = "true"
         }

}

# resource "aws_route53_record" "www" {
#   count = 11
#   zone_id = var.zone_id
#   name    = "${var.instance_names[count.index]}.madcheer.online"  #interpollation variable mixed with static content
#   type    = "A"
#   ttl     = 1
#   records = [var.instance_names[count.index] == "web" ? aws_instance.web[count.index].public_ip : aws_instance.web[count.index].private_ip]
# }

resource "aws_route53_record" "www" {
    for_each = aws_instance.web
  zone_id = var.zone_id
  name    = "${each.key}.madcheer.online"  #interpollation variable mixed with static content
  type    = "A"
  ttl     = 1
  records = [each.value == "web" ? each.value.public_ip : each.value.private_ip]
}

output "instances_info" {
  value = aws_instance.web
}