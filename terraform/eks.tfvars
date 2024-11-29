#Global variables value
environment                             = "EKS-demo"

#VPC variables values
cluster_vpc_name                        = "EKS-VPC"
cluster_vpc_cidr                        = "10.0.0.0/16"
cluster_vpc_availability_zones          = [ "eu-central-1a" ]
cluster_vpc_private_subnets_cidr        = [ "10.0.1.0/24" ]
cluster_vpc_public_subnets_cidr         = [ "10.0.2.0/24" ]
cluster_vpc_nat_gateway                 = true
cluster_vpc_dns_hostnames               = true
cluster_vpc_dns_support                 = true

#EKS variables values
cluster_eks_cluster_name = "eks-cluster-demo"
cluster_eks_version = "1.30"
cluster_eks_coredns = "v1.11.3-eksbuild.1"
cluster_eks_proxy = "v1.30.5-eksbuild.2"
cluster_eks_cni = "v1.18.6-eksbuild.1"
cluster_eks_nodes_type = ["m5.large", "m4.large", "m5n.large", "m5zn.large"]
cluster_eks_ami_type = "AL2023_x86_64_STANDARD"
eks_instance_types   = ["m5.xlarge", "m4.large"]
cluster_eks_principal_arn = "arn:aws:iam::xxxxxxxxxxxxxx:role/eks-cluster-demo-role"
cluster_eks_policy_arn = "arn:aws:eks::aws:cluster-access-policy/AmazonEKSViewPolicy"