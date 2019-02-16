resource "aws_security_group" "tux" {
  name        = "${local.sg_tux_name}"
  description = "Applied to all Linux instances"
  vpc_id      = "${var.vpc_id}"

  tags = "${merge(var.default_tags, map(
      "Name", "${local.sg_tux_name}"
    ))}"
}

##########
# Ingress
##########

#########
# Egress
#########
resource "aws_security_group_rule" "er_base_tux" {
  type              = "egress"
  from_port         = 0
  to_port           = 0
  protocol          = "-1"
  cidr_blocks       = ["0.0.0.0/0"]
  security_group_id = "${aws_security_group.tux.id}"
}
