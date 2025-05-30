terraform {
  cloud {
    organization = "Project-Medalla"
    workspaces {
      name = "project_medalla"
    }
  }
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 5.79.0"
    }
  }
  required_version = "~>1.9.5"
}

provider "aws" {
  region     = "us-east-1"
  access_key = var.aws_access_key
  secret_key = var.aws_secret_key
}