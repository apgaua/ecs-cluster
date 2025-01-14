output "load_balancer_dns" {
  value = module.ecs_ec2.load_balancer_dns
}

output "lb_ssm_arn" {
  value = module.ecs_ec2.lb_ssm_arn
}

output "lb_ssm_listener" {
  value = module.ecs_ec2.lb_ssm_listener
}