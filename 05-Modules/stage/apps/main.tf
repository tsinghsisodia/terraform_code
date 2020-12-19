module "webservers" {
    source = "../../modules"
    instance_type = "t2.medium"
}

resource "aws_security_group_rule" "allow_myport" {
    type = "ingress"
    security_group_id = module.webservers.my_module_sg_id
        from_port = var.server_port
        to_port = var.server_port
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
}