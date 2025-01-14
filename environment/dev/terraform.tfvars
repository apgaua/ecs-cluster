region       = "us-east-1"
project_name = "lab-ecs-cluster"

## Parametros SSM VPC
privatesubnets = [
  "/ECS/subnets/private/us-east-1a/ecs-private-subnet-1a",
  "/ECS/subnets/private/us-east-1a/ecs-private-subnet-1b",
  "/ECS/subnets/private/us-east-1a/ecs-private-subnet-1c"
]

publicsubnets = [
  "/ECS/subnets/public/us-east-1a/ecs-public-subnet-1a",
  "/ECS/subnets/public/us-east-1a/ecs-public-subnet-1b",
  "/ECS/subnets/public/us-east-1a/ecs-public-subnet-1c"
]

databasesubnets = [
  "/ECS/subnets/database/us-east-1a/ecs-public-subnet-1a",
  "/ECS/subnets/database/us-east-1a/ecs-public-subnet-1b",
  "/ECS/subnets/database/us-east-1a/ecs-public-subnet-1c"
]

ssm_vpc_id = "/ecs-vpc/vpc/vpc_id"

## LB
load_balancer_internal = false
load_balancer_type     = "application"

## ECS
nodes_ami          = "ami-0a5f593ecaa0f722d"
node_instance_type = "t4g.micro"
node_volume_size   = "40"
node_volume_type   = "gp3"

cluster_ondemand_min     = 2
cluster_ondemand_max     = 4
cluster_ondemand_desired = 3

cluster_spot_min     = 2
cluster_spot_max     = 4
cluster_spot_desired = 3