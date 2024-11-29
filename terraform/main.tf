#Create AWS VPC
module "vpc" {
  source                        = "./modules/vpc"
  vpc_name                      = var.cluster_vpc_name
  vpc_cidr                      = var.cluster_vpc_cidr
  vpc_availability_zones        = var.cluster_vpc_availability_zones
  vpc_private_subnets_cidr      = var.cluster_vpc_private_subnets_cidr
  vpc_public_subnets_cidr       = var.cluster_vpc_public_subnets_cidr
  vpc_nat_gateway               = var.cluster_vpc_nat_gateway
  vpc_dns_hostnames             = var.cluster_vpc_dns_hostnames
  vpc_dns_support               = var.cluster_vpc_dns_support
  environment                   = var.environment
}

module "eks" {
  source                        = "./modules/eks"
  eks_cluster_name              = var.cluster_eks_cluster_name
  eks_version                   = var.cluster_eks_version
  eks_coredns                   = var.cluster_eks_coredns
  eks_proxy                     = var.cluster_eks_proxy
  eks_cni                       = var.cluster_eks_cni
  vpc_id                        = module.vpc.vpc_id
  eks_subnets_ids               = [ module.vpc.private_subnet_ids ]
  eks_cp_subnets_id             = [ module.vpc.public_subnet_ids ]
  eks_nodes_type                = var.cluster_eks_nodes_type
  eks_ami_type                  = var.cluster_eks_ami_type
  eks_instance_types            = var.eks_instance_types
  eks_principal_arn             = var.cluster_eks_principal_arn
  eks_policy_arn                = var.cluster_eks_policy_arn
  environment                   = var.environment
}