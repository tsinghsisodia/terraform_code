resource "aws_security_group" "elb_sg" {
 name="elb_sg-${var.environment}"
}

resource "aws_security_group_rule" "allow_server_port" {
        type="ingress"
        security_group_id = aws_security_group.elb_sg.id
        from_port = var.server_port
        to_port = var.server_port
        protocol = "tcp"
        cidr_blocks = [ var.my_public_ip ]
}

resource "aws_security_group_rule" "allow_out" {
    type = "egress"
    security_group_id = aws_security_group.elb_sg.id
    from_port       = 0
     to_port         = 0
     protocol        = "-1"
     cidr_blocks     = ["0.0.0.0/0"]
}