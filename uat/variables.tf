# DO NOT ASSIGN THESE IN THE REPO
variable "aws_access_key" { type = string }
variable "aws_secret_key" { type = string }

#Network
variable "vpc_name" { type = string }
variable "igw_name" { type = string }
variable "vpc_cidr_block" { type = string }
variable "private_subnets" { type = map(any) }
variable "public_subnets" { type = map(any) }

# SECURITY GROUP MODULE VARIABLES
variable "sg_uat" {}

# EC2 MODULE VARIABLES
variable "keypairs" {}