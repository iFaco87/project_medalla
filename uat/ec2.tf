module "ec2" {
  source    = "git:ssh:://git@github.com:iFaco87/terraform-child-module.git//ec2"
  instances = local.instances
  keypairs  = var.keypairs
}