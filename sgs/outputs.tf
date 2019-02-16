output "tux_sg_id" {
  value = "${aws_security_group.tux.id}"
}

output "db_clients_sg_id" {
  value = "${aws_security_group.db_clients.id}"
}

output "r53_hcs_sg_id" {
  value = "${aws_security_group.r53_health_checks.id}"
}

output "alb_sg_id" {
  value = "${aws_security_group.alb.id}"
}

output "cs_api_sg_id" {
  value = "${aws_security_group.cs_api.id}"
}
