resource "aws_autoscaling_group" "my-first-asg" {
  name = "${var.cluster}-websever-asg"
  launch_configuration = aws_launch_configuration.my-first-launch-conf.id
  load_balancers       = [aws_elb.my-first-elb.name]
  availability_zones   = var.azs
  min_size             = 2
  max_size             = 10
  desired_capacity     = 3
    tag {
		key = "Name"
		value = "terraform-asg-${var.environment}"
		propagate_at_launch = true  
	}
}