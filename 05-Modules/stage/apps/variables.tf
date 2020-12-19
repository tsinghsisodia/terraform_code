variable "region" {
  description = " it will define the AWS region for stage "
  default     = "ap-south-1"
}
variable "instance_type" {
  description = "AWS ec2 instance type"
  default     = "t2.medium"
}

variable "server_port" {
  description = " http service listen on ths port "
  default     = "80"
}