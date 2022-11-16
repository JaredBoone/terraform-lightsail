terraform {
  required_providers {
    aws = {
      version = ">= 2.0"
    }
  }

  cloud {
    organization = var.tf_cloud_org
    workspaces {
      name = var.tf_cloud_worspace
    }
  }
}

provider "aws" {
  region                  = var.region
  profile                 = var.profile
}