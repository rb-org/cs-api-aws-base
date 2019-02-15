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

# EC2
variable "instance_type" {
  type = "map"
}

variable "instance_count" {
  type = "map"
}

variable "key_name" {}

# Monitoring 
variable "enable_cw_metrics" {
  type = "map"
}

variable "enable_monitoring" {
  type = "map"
}

variable "enable_cw_alarm_cpu" {
  description = "If true, the launched EC2 instance will have create cpu alarms"
  type        = "map"
}

variable "enable_cw_alarm_disk_tux" {
  description = "If true, the launched EC2 instance will have create disk alarms"
  type        = "map"
}

variable "log_group_retention" {
  type = "map"

  default = {
    d020 = 3
    t030 = 3
    p040 = 10
  }
}

# Instance Vars

variable "disable_api_term" {
  type = "map"
}

variable "ebs_optimized" {
  type = "map"
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
