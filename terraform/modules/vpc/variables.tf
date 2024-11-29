#Begining of global variables
variable "environment" {
  type = string
}
#End of global variables

#Begining of VPC variables
variable "vpc_name" {
  type = string
}
variable "vpc_cidr" {
  type=string
}
variable "vpc_availability_zones" {
  type = list
}
variable "vpc_private_subnets_cidr" {
  type = list
}
variable "vpc_public_subnets_cidr" {
  type = list
}
variable "vpc_nat_gateway" {
  type = bool
}
variable "vpc_dns_hostnames" {
  type = bool
}
variable "vpc_dns_support" {
  type = bool
}
#End of VPC variables