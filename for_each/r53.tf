resource "aws_route53_record" "r53" {
  for_each = aws_instance.example
  zone_id = var.zone_id
  #interpolation we are mixing two variuable and some text between
  name    = "${each.key}.dev.${var.domain_name}"
  type    = "A"
  ttl     = 1
  records = [each.value.private_ip]
  allow_overwrite = true
}