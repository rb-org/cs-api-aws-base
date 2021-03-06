resource "aws_security_group" "cs_api" {
  name        = "${local.sg_cs_api_name}"
  description = "CS API"
  vpc_id      = "${var.vpc_id}"

  tags = "${merge(var.default_tags, map(
      "Name", "${local.sg_cs_api_name}"
    ))}"
}

##########
# Ingress
##########

resource "aws_security_group_rule" "ir_alb_cs_api_t" {
  type                     = "ingress"
  from_port                = 5000
  to_port                  = 5000
  protocol                 = "tcp"
  source_security_group_id = "${aws_security_group.alb.id}"
  description              = "Allow ALB on 5000"
  security_group_id        = "${aws_security_group.cs_api.id}"
}

#########
# Egress
#########
resource "aws_security_group_rule" "er_base_cs_api" {
  type              = "egress"
  from_port         = 0
  to_port           = 0
  protocol          = "-1"
  cidr_blocks       = ["0.0.0.0/0"]
  security_group_id = "${aws_security_group.cs_api.id}"
}
