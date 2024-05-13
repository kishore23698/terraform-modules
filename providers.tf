terraform {
  backend "s3" {
    bucket                  = "eks-cluster-state-store"
    key                     = "terraform.tfstate"
    region                  = "ap-south-1"
    shared_credentials_files = ["$HOME/.aws/credentials"]
    }

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region                  = "ap-south-1"
}
