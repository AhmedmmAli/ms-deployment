module "eks" {
  source  = "terraform-aws-modules/eks/aws"
  version = "~> 20.0"

  cluster_name    = var.eks_cluster_name
  cluster_version = var.eks_version

  cluster_endpoint_public_access  = true

  cluster_addons = {
    coredns                = var.eks_coredns
    kube-proxy             = var.eks_proxy
    vpc-cni                = var.eks_cni
  }

  vpc_id                   = var.vpc_id
  subnet_ids               = var.eks_subnets_ids
  control_plane_subnet_ids = var.eks_cp_subnets_id

  # EKS Managed Node Group(s)
  eks_managed_node_group_defaults = {
    instance_types = var.eks_nodes_type
  }

  eks_managed_node_groups = {
    example = {
      ami_type       = var.eks_ami_type
      instance_types = var.eks_instance_types

      min_size     = 2
      max_size     = 10
      desired_size = 1
    }
  }

  # Cluster access entry
  # To add the current caller identity as an administrator
  enable_cluster_creator_admin_permissions = true

  access_entries = {
    # One access entry with a policy associated
    example = {
      principal_arn     = var.eks_principal_arn

      policy_associations = {
        example = {
          policy_arn = var.eks_policy_arn
          access_scope = {
            namespaces = ["default"]
            type       = "namespace"
          }
        }
      }
    }
  }

  tags = {
    Environment = var.environment
    Terraform   = "true"
  }
}