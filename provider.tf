terraform {
  required_providers {
    aws = {
      version = ">= 2.0"
    }
  }

  cloud {
    organization = "jaredboone"
    workspaces {
      name = "terraform-lightsail"
    }
  }
}

provider "aws" {
  region                  = var.region
}