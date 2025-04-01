module "network" {
  source          = "git@github.com:iFaco87/terraform-child-module.git//networks?ref=v0.0.1"
  vpc_name        = var.vpc_name
  igw_name        = var.igw_name
  vpc_cidr_block  = var.vpc_cidr_block
  public_subnets  = var.public_subnets
  private_subnets = var.private_subnets
}