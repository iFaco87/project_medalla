module "ec2" {
  source    = "git@github.com:iFaco87/terraform-child-module.git/ec2?ref=v0.0.1"
  instances = local.instances
  keypairs  = var.keypairs
}