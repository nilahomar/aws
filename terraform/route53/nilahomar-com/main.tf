terraform {
  backend "s3" {
    bucket = "aws-terraform-backend-state-nila"
    key    = "route53/nilahomar-com/terraform.tfstate"
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

resource "aws_route53_zone" "main" {
  name    = "nilahomar.com"
  comment = "HostedZone created by Route53 Registrar"
}
