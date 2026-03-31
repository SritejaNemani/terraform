resource "aws_route53_record" "r53" {
  count = 10
  zone_id = var.zone_id
  #interpolation we are mixing two variuable and some text between
  name    = "${var.instances[count.index]}.dev.${var.domain_name}"
  type    = "A"
  ttl     = 1
  records = [aws_instance.example[count.index].private_ip]
}

resource "aws_route53_record" "r53" {
  zone_id = var.zone_id
  #interpolation we are mixing two variuable and some text between
  name    = "roboshop.dev.${var.domain_name}"
  type    = "A"
  ttl     = 1
  records = [aws_instance.example[index(var.instances, "frontend")].public_ip]
}