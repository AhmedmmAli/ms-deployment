output "vpc_id" {
  description = "VPC ID"
  value = module.vpc.vpc_id
}
output "vpc_cidr" {
  description = "VPC CICD"
  value = module.vpc.vpc_cidr_block
}
output "private_subnet_ids" {
  description = "VPC private subnets"
  value = module.vpc.private_subnet_ids
}
output "public_subnet_ids" {
  description = "VPC public subnets"
  value = module.vpc.public_subnet_ids
}
output "EKS_cluster_name" {
  description = "EKS cluster name"
  value = module.eks.cluster_name
}