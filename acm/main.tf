module "wildcard" {
  source = "git@github.com:rb-org/tfm-aws-mod-misc//acm?ref=v0.0.1"

  domains = {
    "${data.aws_route53_zone.public.name}" = ["*.${local.domain_name}"]
  }

  ssl_cert_primary_name = "*.${local.domain_name}"
  tags                  = "${var.default_tags}"
}
