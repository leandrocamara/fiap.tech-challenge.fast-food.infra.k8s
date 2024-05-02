resource "aws_alb" "alb" {
  name = "ALB-${var.projectName}"
  internal = false
  load_balancer_type = "application"
  subnets = aws_eks_cluster.eks_cluster.vpc_config[0].subnet_ids
  security_groups = [aws_security_group.sg.id]
  idle_timeout = 60
}

resource "aws_lb_listener" "listener" {
  load_balancer_arn = aws_alb.alb.arn
  port = "80"
  protocol = "HTTP"

  default_action {
    type = "foward"
    target_group_arn = aws_lb_target_group.tg.arn
  }
}