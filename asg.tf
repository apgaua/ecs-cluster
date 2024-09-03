resource "aws_autoscaling_group" "on_demand" {
  name_prefix = format("%s-on-demand", var.project_name)
  vpc_zone_identifier = [
    data.aws_ssm_parameter.subnet_private_1.value,
    data.aws_ssm_parameter.subnet_private_2.value,
    data.aws_ssm_parameter.subnet_private_3.value,
  ]
  #       enabled_metrics = true
  desired_capacity = var.cluster_ondemand_desired
  max_size         = var.cluster_ondemand_max
  min_size         = var.cluster_ondemand_min

  launch_template {
    id      = aws_launch_template.on_demand.id
    version = aws_launch_template.on_demand.latest_version
  }

  tag {
    key                 = "Name"
    value               = format("%s-on-demand", var.project_name)
    propagate_at_launch = true
  }

  tag {
    key                 = "AmazonECSManaged"
    value               = true
    propagate_at_launch = true
  }
}