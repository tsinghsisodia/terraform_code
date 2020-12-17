output "DNS_name_elb" {
  value = [aws_elb.my-first-elb.dns_name]
}