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