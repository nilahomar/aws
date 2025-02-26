module "vpc" {
  source = "terraform-aws-modules/vpc/aws"
  name   = "dev-01"
  cidr   = "10.0.0.0/16"

  azs             = ["eu-central-1a", "eu-central-1b", "eu-central-1c"]
  private_subnets = ["10.0.0.0/19", "10.0.32.0/19", "10.0.64.0/19"]
  public_subnets  = ["10.0.101.0/24", "10.0.102.0/24", "10.0.103.0/24"]

  enable_nat_gateway = false
  single_nat_gateway = false

  map_public_ip_on_launch = "true"

  # public_subnet_tags = {
  #   "kubernetes.io/role/elb" = 1
  # }

  # private_subnet_tags = {
  #   "kubernetes.io/role/internal-elb" = 1
  # }

  tags = {
    Terraform   = "true"
    Environment = "dev"
  }
}

output "vpc" {
  value = module.vpc
}
