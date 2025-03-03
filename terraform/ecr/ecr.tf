# locals {
#   repositories = ["client", "server", "worker"]
# }

# resource "aws_ecr_repository" "this" {
#   for_each = toset(local.repositories)

#   name                 = each.value
#   image_tag_mutability = "MUTABLE"
# }
