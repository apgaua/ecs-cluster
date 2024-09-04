data "aws_vpc" "main" {
  tags = {
    "Name" = "containers-vpc"
  }
}
data "aws_ssm_parameter" "vpc" {
  name = var.ssm_vpc_id
}

data "aws_ssm_parameter" "pubsubnet_1a" {
  name = var.ssm_public_subnet_1
}

data "aws_ssm_parameter" "pubsubnet_1b" {
  name = var.ssm_public_subnet_2
}

data "aws_ssm_parameter" "pubsubnet_1c" {
  name = var.ssm_public_subnet_3
}

data "aws_ssm_parameter" "privsubnet_1a" {
  name = var.ssm_private_subnet_1
}

data "aws_ssm_parameter" "privsubnet_1b" {
  name = var.ssm_private_subnet_2
}

data "aws_ssm_parameter" "privsubnet_1c" {
  name = var.ssm_private_subnet_3
}
