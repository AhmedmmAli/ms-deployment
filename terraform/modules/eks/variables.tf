#Begining of global variables
variable "environment" {
  type = string
}
#End of global variables

#Begining of EKS variables
variable "eks_cluster_name" {
  type = string
}
variable "eks_version" {
  type = string
}
variable "eks_coredns" {
  type = string
}
variable "eks_proxy" {
  type = string
}
variable "eks_cni" {
  type = string
}
variable "vpc_id" {
  type = string
}
variable "eks_subnets_ids" {
  type = list
}
variable "eks_cp_subnets_id" {
  type = list
}
variable "eks_nodes_type" {
  type = string
}
variable "eks_ami_type" {
  type = string
}
variable "eks_instance_types" {
  type = string
}
variable "eks_principal_arn" {
  type = string
}
variable "eks_policy_arn" {
  type = string
}
#End of EKS variables