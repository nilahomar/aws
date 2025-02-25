resource "aws_route53_zone" "dev" {
  name = "dev.nilahomar.com"
}

resource "aws_route53_record" "dev" {
  zone_id = aws_route53_zone.main.zone_id
  name    = "dev.nilahomar.com"
  type    = "NS"
  ttl     = "300"
  records = aws_route53_zone.main.name_servers
}
