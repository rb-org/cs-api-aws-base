module "vpc" {
  source = "./vpc"

  vpc_cidr                   = "${var.vpc_cidr}"
  default_tags               = "${var.default_tags}"
  enable_vpc_flow_logs       = "${var.enable_vpc_flow_logs[terraform.workspace]}"
  flow_log_retention_in_days = "${var.flow_log_retention_in_days[terraform.workspace]}"
}

module "s3" {
  source = "./s3"

  region       = "${data.aws_region.current.name}"
  default_tags = "${var.default_tags}"
}

module "sgs" {
  source = "./sgs"

  vpc_id       = "${module.vpc.vpc_id}"
  default_tags = "${var.default_tags}"

  # sg_ssh_id               = "${module.ec2_ssh.sg_id}"
  r53_health_check_ranges = "${data.aws_ip_ranges.route_53_health_checks.cidr_blocks}"
}

module "sns" {
  source = "./sns"

  default_tags = "${var.default_tags}"
}

module "acm" {
  source = "./acm"

  default_tags       = "${var.default_tags}"
  r53_dns_domain_pub = "${var.r53_dns_domain_pub}"
}
