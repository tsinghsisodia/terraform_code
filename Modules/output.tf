output "DNS_name_elb" {
  value = [aws_elb.my-first-elb.dns_name]
}

output "my_elb_sg_id" {
  value = aws_security_group.elb_sg.id
}

output "my_module_sg_id" {
  value = aws_security_group.webserver_sg.id
}