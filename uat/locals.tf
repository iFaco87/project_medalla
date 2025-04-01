locals {
  security_group_id = module.sg_uat.id
  public_subnet_ids        = module.network.public_subnets_ids
    instances = {
    "uat" = {
      key_name                    = "mj"
      instance_type               = "t3.2xlarge"
      subnet_id                   = local.public_subnets_ids[0]
      security_group_ids          = [local.security_group_id]
      associate_public_ip_address = true
      monitoring                  = false
      volume_size                 = 500
      volume_type                 = "gp3"
    }
  }
}