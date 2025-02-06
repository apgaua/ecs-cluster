region       = "us-east-2"
project_name = "ecs-cluster"

# ## Parametros SSM VPC
privatesubnets = [
  "/ECS/subnets/private/us_east_2a",
  "/ECS/subnets/private/us_east_2b",
  "/ECS/subnets/private/us_east_2c"
]

publicsubnets = [
  "/ECS/subnets/public/us_east_2a",
  "/ECS/subnets/public/us_east_2b",
  "/ECS/subnets/public/us_east_2c"
]

databasesubnets = [
  "/ECS/subnets/databases/us_east_2a",
  "/ECS/subnets/databases/us_east_2b",
  "/ECS/subnets/databases/us_east_2c"
]

# default_tags = {
#   contato = "apgaua@protonmail.com"
#   dia = "D2"
#   repo = "tralala"
# }

ssm_vpc_id = "/ECS/vpc/id"

##############################################################
################## LOAD BALANCER VARIABLES ###################
##############################################################
load_balancer_internal = false
load_balancer_type     = "application"


##############################################################
###################### ECS VARIABLES #########################
##############################################################
nodes_ami          = "ami-0735de0d7bfebab99"
node_instance_type = "t4g.micro"
node_volume_size   = "40"
node_volume_type   = "gp3"

cluster_ondemand_min     = 1
cluster_ondemand_max     = 4
cluster_ondemand_desired = 1

cluster_spot_min      = 2
cluster_spot_max      = 4
cluster_spot_desired  = 3
cluster_spot_maxprice = "0.005"