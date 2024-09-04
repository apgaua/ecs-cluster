region       = "us-east-1"
project_name = "lab-ecs-cluster"

## Parametros SSM VPC
ssm_private_subnet_1 = "/containers-vpc/vpc/containers-vpc-private-subnet-1a"
ssm_private_subnet_2 = "/containers-vpc/vpc/containers-vpc-private-subnet-1b"
ssm_private_subnet_3 = "/containers-vpc/vpc/containers-vpc-private-subnet-1c"

ssm_public_subnet_1 = "/containers-vpc/vpc/containers-vpc-public-subnet-1a"
ssm_public_subnet_2 = "/containers-vpc/vpc/containers-vpc-public-subnet-1b"
ssm_public_subnet_3 = "/containers-vpc/vpc/containers-vpc-public-subnet-1c"

ssm_vpc_id = "/containers-vpc/vpc/vpc_id"

## LB
load_balancer_internal = false
load_balancer_type     = "application"

## ECS
nodes_ami          = "ami-0a5f593ecaa0f722d"
node_instance_type = "t3a.micro"
node_volume_size   = "40"
node_volume_type   = "gp3"

cluster_ondemand_min     = 2
cluster_ondemand_max     = 4
cluster_ondemand_desired = 3

cluster_spot_min     = 2
cluster_spot_max     = 4
cluster_spot_desired = 3