module "vpc" {
  source                = "terraform-aws-modules/vpc/aws"
  version               = "3.14.2"
  name                  = var.vpc_name
  cidr                  = var.vpc_cidr
  azs                   = var.vpc_availability_zones
  private_subnets       = var.vpc_private_subnets_cidr
  public_subnets        = var.vpc_public_subnets_cidr
  enable_nat_gateway    = var.vpc_nat_gateway
  enable_dns_hostnames  = var.vpc_dns_hostnames
  enable_dns_support    = var.vpc_dns_support
  tags = {
    Terraform           = "true"
    Environment         = var.environment
  }
}