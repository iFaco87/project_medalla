module "ec2" {
  source    = "git::ssh://git@github.com/iFaco87/terraform-child-module.git//ec2?ref=v0.0.7"
  instances = local.instances
  keypairs  = var.keypairs
}

resource "aws_eip" "uat-elp" {
  instance = module.ec2.ec2_id[0]
  domain = "vpc"
}

