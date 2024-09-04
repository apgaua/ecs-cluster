data "aws_vpc" "main" {
  tags = {
    "Name" = "containers-vpc"
  }
}
data "aws_ssm_parameter" "vpc" {
  name = var.ssm_vpc_id
}
data "aws_ssm_parameter" "subnet_public_1" {
  name = var.ssm_public_subnet_1
}

data "aws_ssm_parameter" "subnet_private_1" {
  name = var.ssm_private_subnet_1
}
