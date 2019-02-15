# Data Resources

data "aws_ip_ranges" "route_53_health_checks" {
  regions  = ["eu-west-1", "us-west-1", "us-east-1"]
  services = ["route53_healthchecks"]
}

data "aws_region" "current" {}
