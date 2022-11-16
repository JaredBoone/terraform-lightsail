terraform {
  required_providers {
    aws = {
      version = ">= 2.0"
    }
  }

  cloud {
    organization = var.terraform_org
    workspaces {
      name = var.terraform_worspace
    }
  }
}

provider "aws" {
  region                  = var.region
  profile                 = var.profile
}