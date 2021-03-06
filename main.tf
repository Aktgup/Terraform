## backend data for terraform
terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
    }
  }

  backend "remote" {
    organization = "Cloudfirstdemo"

    workspaces {
      name = "AWS_Cloudfirstdemo"
    }
  }
}

provider "aws" {
  region = "us-east-1"
  profile="default"
}
