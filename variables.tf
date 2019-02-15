variable "region" {
  description = "AWS Region"
  default     = "eu-west-1"
}

variable "account_id" {
  description = "AWS Account ID"
  default     = ""
}

variable "default_tags" {
  type        = "map"
  description = "Map of default tags applied to all resources"

  default = {
    Github-Repo = "rb-org/cs-api-aws-base"
    Terraform   = "true"
  }
}

variable "vpc_cidr" {}

variable "r53_dns_domain_pub" {
  default = "xyzexcp.nl"
}

# FLow logs
variable "enable_vpc_flow_logs" {
  type = "map"

  default = {
    d020 = false
    t030 = false
    p040 = true
  }
}

variable "flow_log_retention_in_days" {
  type = "map"

  default = {
    d020 = 3
    t030 = 3
    p040 = 10
  }
}
