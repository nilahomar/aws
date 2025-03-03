# module "eks" {
#   source  = "terraform-aws-modules/eks/aws"
#   version = "~> 20.0"

#   cluster_name    = "dev-01"
#   cluster_version = "1.31"

#   cluster_addons = {
#     coredns                = {}
#     eks-pod-identity-agent = {}
#     kube-proxy             = {}
#     vpc-cni                = {}
#     metrics-server         = {}
#     ebs-csi-driver         = {}
#   }

#   cluster_endpoint_public_access  = true
#   cluster_endpoint_private_access = false

#   enable_cluster_creator_admin_permissions = true

#   vpc_id                   = data.terraform_remote_state.vpc.outputs.vpc.vpc_id
#   subnet_ids               = data.terraform_remote_state.vpc.outputs.vpc.public_subnets
#   control_plane_subnet_ids = data.terraform_remote_state.vpc.outputs.vpc.public_subnets

#   eks_managed_node_group_defaults = {
#     instance_types = ["t3.small"]
#   }

#   eks_managed_node_groups = {
#     example = {
#       ami_type       = "AL2023_x86_64_STANDARD"
#       instance_types = ["t3.small"]

#       min_size     = 1
#       max_size     = 3
#       desired_size = 1
#     }
#   }

#   tags = {
#     Environment = "dev"
#     Terraform   = "true"
#   }
# }
