module "ecs_ec2" {
  # source = "github.com/apgaua/terraform-modules//ecs_ec2/"
  source = "../../terraform-modules/ecs_ec2/"

  region       = var.region
  project_name = var.project_name
  ssm_vpc_id   = var.ssm_vpc_id

  ###############################################
  ############### PRIVATE SUBNET ################
  ###############################################

  privatesubnets = var.privatesubnets

  ###############################################
  ############### PUBLIC SUBNET #################
  ###############################################

  publicsubnets = var.publicsubnets

  ###############################################
  ############## DATABASE SUBNET ################
  ###############################################

  databasesubnets = var.databasesubnets

  ###############################################
  ################ LOAD BALANCER ################
  ###############################################

  load_balancer_internal = var.load_balancer_internal
  load_balancer_type     = var.load_balancer_type

  ###############################################
  ###################### ECS ####################
  ###############################################

  nodes_ami          = var.nodes_ami
  node_instance_type = var.node_instance_type
  node_volume_size   = var.node_volume_size
  node_volume_type   = var.node_volume_type

  cluster_ondemand_min     = var.cluster_ondemand_min
  cluster_ondemand_max     = var.cluster_ondemand_max
  cluster_ondemand_desired = var.cluster_ondemand_desired

  cluster_spot_min      = var.cluster_spot_min
  cluster_spot_max      = var.cluster_spot_max
  cluster_spot_desired  = var.cluster_spot_desired
  cluster_spot_maxprice = var.cluster_spot_maxprice
}