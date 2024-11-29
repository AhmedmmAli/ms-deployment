variable "access_key" {}
variable "secret_key" {}
variable "region" {}
variable "environment" {}

variable "cluster_vpc_name" {}
variable "cluster_vpc_cidr" {}
variable "cluster_vpc_availability_zones" {}
variable "cluster_vpc_private_subnets_cidr" {}
variable "cluster_vpc_public_subnets_cidr" {}
variable "cluster_vpc_nat_gateway" {}
variable "cluster_vpc_dns_hostnames" {}
variable "cluster_vpc_dns_support" {}


variable "cluster_eks_cluster_name" {}
variable "cluster_eks_version" {}
variable "cluster_eks_coredns" {}
variable "cluster_eks_proxy" {}
variable "cluster_eks_cni" {}
variable "cluster_eks_nodes_type" {}
variable "cluster_eks_ami_type" {}
variable "eks_instance_types" {}
variable "cluster_eks_principal_arn" {}
variable "cluster_eks_policy_arn" {}
