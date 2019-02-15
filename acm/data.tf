data "aws_route53_zone" "public" {
  name = "${var.r53_dns_domain_pub}."
}
