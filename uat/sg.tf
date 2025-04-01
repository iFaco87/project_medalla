module "sg_uat" {
  source           = "cloudposse/security-group/aws"
  version          = "2.2.0"
  stage            = var.sg_uat.stage
  attributes       = var.sg_uat.attributes
  allow_all_egress = var.sg_uat.allow_all_egress
  vpc_id           = module.network.vpc_id
  rules            = var.sg_uat.rules
}

