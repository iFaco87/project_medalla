locals {
  security_group_id = module.sg_uat.id
  instances = {
    "uat" = {
      key_name                    = "mj"
      instance_type               = "t3.2xlarge"
      subnet_id                   = module.network.public_subnet_ids[0]
      security_group_ids          = [local.security_group_id]
      associate_public_ip_address = false
      monitoring                  = false
      volume_size                 = 500
      volume_type                 = "gp3"
    }
  }
}