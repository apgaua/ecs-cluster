variable "region" {}
variable "project_name" {}
variable "ssm_vpc_id" {}
variable "ssm_public_subnet_1" {}
variable "ssm_public_subnet_2" {}
variable "ssm_public_subnet_3" {}
variable "ssm_private_subnet_1" {}
variable "ssm_private_subnet_2" {}
variable "ssm_private_subnet_3" {}

variable "load_balancer_internal" {}

variable "load_balancer_type" {}

variable "nodes_ami" {}

variable "node_instance_type" {}

variable "node_volume_size" {}

variable "node_volume_type" {}

variable "cluster_ondemand_min" {}

variable "cluster_ondemand_max" {}

variable "cluster_ondemand_desired" {}

variable "cluster_spot_min" {}

variable "cluster_spot_max" {}

variable "cluster_spot_desired" {}