resource "aws_instance" "web" {
  for_each = var.instance_names
  ami           = var.ami_id #devops-practice
  instance_type = each.value
  tags = {
    Name = each.key
  }
}


resource "aws_route53_record" "www" {
  for_each = aws_instance.web
  zone_id = var.zone_id
  name    = "${each.key}.${var.domain_name}" #interpolation
  type    = "A"
  ttl     = 1
  records = [each.key == "web" ? each.value.public_ip : each.value.private_ip ]
}

# output "instances_info" {
#   value = aws_instance.web
# }  (it is taking too much space so we have commented)