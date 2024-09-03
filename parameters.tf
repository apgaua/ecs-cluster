resource "aws_ssm_parameter" "lb_arn" {
  name  = "/containers-vpc/ecs/lb/id"
  value = aws_lb.main.arn
  type  = "String"
}

resource "aws_ssm_parameter" "lb_listener" {
  name  = "/containers-vpc/ecs/lb/listener"
  value = aws_lb_listener.main.arn
  type  = "String"
}