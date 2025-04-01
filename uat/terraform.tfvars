vpc_name       = "uat-vpc"
igw_name       = "uat-igw"
vpc_cidr_block = "10.0.0.0/16"

public_subnets = {
  "public1" = {
    name              = "UAT Public Subnet 1"
    cidr_block        = "10.0.1.0/24"
    availability_zone = "us-east-1a"
  }
  "public2" = {
    name              = "UAT Public Subnet 2"
    cidr_block        = "10.0.2.0/24"
    availability_zone = "us-east-1b"
  }
  "public3" = {
    name              = "UAT Public Subnet 3"
    cidr_block        = "10.0.3.0/24"
    availability_zone = "us-east-1c"
  }
}

private_subnets = {
  "private1" = {
    name              = "UAT Private Subnet 1"
    cidr_block        = "10.0.51.0/24"
    availability_zone = "us-east-1a"
  }
  "private2" = {
    name              = "UAT Private Subnet 2"
    cidr_block        = "10.0.52.0/24"
    availability_zone = "us-east-1b"
  }
  "private3" = {
    name              = "UAT Private Subnet 3"
    cidr_block        = "10.0.53.0/24"
    availability_zone = "us-east-1c"
  }
}

sg_uat = {
  stage            = "uat"
  attributes       = ["uat"]
  allow_all_egress = true
  rules = [
    {
      key         = "ssh"
      type        = "ingress"
      from_port   = 22
      to_port     = 22
      protocol    = "tcp"
      cidr_blocks = ["0.0.0.0/0"]
      self        = null
      description = "Allow SSH from anywhere"
    },
    {
      key         = "https"
      type        = "egress"
      from_port   = 443
      to_port     = 443
      protocol    = "tcp"
      cidr_blocks = ["0.0.0.0/0"]
      self        = null
      description = "Allow HTTPS to anywhere"
    }
  ]
}

keypairs = {
  "mj" = {
    name       = "mj"
    public_key = "sh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIB6qVRgiSXvPZ0P93eHTfDfF2+KHzB/5NoaQLDjSIL23 mjohnson@mws"
  }

}