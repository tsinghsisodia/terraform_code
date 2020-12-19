variable "region" {
  description = " it will define the AWS region "
  default     = "ap-south-1"
}

variable "cluster" {
  default = "microservice"
}
variable "server_port" {
  description = " http service listen on ths port "
  default     = "80"
}

variable "ssh_port" {
  description = "ssh request to server  "
  default     = "22"
}

variable "instance_type" {
  description = "AWS ec2 instance type"
  default     = "t2.micro"
}

variable "my_public_ip" {
  description = "My local system public IP ..."
  default     = "47.247.79.131/32"
}

variable "ami" {
  description = "amazon machine image"
  default     = "ami-0a4a70bd98c6d6441"
}

variable "azs" {
  default = ["ap-south-1a", "ap-south-1b"]
}

variable "environment" {
description= "type of environment , prod or stg or dev "
default="stag"
}

variable "vpc_id" {
description = "provide vpc_id"
}