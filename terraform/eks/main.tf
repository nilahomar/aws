terraform {
  backend "s3" {
    bucket = "aws-terraform-backend-state-nila"
    key    = "eks/terraform.tfstate"
    region = "eu-central-1"
  }
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = "eu-central-1"
}

data "terraform_remote_state" "vpc" {
  backend = "s3"
  config = {
    bucket = "aws-terraform-backend-state-nila"
    key    = "vpc/terraform.tfstate"
    region = "eu-central-1"
  }
}

data "aws_route53_zone" "main" {
  name = "dev.nilahomar.com"
}
