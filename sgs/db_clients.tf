resource "aws_security_group" "db_clients" {
  name        = "${local.sg_db_clients_name}"
  description = "DB Clients group"
  vpc_id      = "${var.vpc_id}"

  tags = "${merge(var.default_tags, map(
      "Name", "${local.sg_db_clients_name}"
    ))}"
}
