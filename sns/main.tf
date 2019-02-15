module "sns_slack" {
  source = "github.com/rb-org/tfm-aws-mod-misc//sns_slack?ref=v0.0.4"

  sns_slack_webhook     = "${data.aws_ssm_parameter.slack_webhook.value}"
  sns_email             = "${data.aws_ssm_parameter.sns_email.value}"
  victorops_routing_key = "${data.aws_ssm_parameter.victorops_routing_key.value}"
  victorops_webhook     = "${data.aws_ssm_parameter.victorops_webhook.value}"
  default_tags          = "${var.default_tags}"

  create_all       = true
  create_sns_topic = true
  use_source_hash  = false
}
