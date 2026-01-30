data "aws_partition" "current" {}

# checkov:skip=CKV_TF_1: Registry module pinned by version; commit hash not applicable.
module "this" {
  source  = "terraform-aws-modules/eks/aws"
  version = "21.14.0"

  name               = var.name
  kubernetes_version = var.kubernetes_version

  vpc_id     = var.vpc_id
  subnet_ids = var.subnet_ids

  endpoint_public_access       = true
  endpoint_public_access_cidrs = var.endpoint_public_access_cidrs
  enable_irsa                  = true

  addons = var.eks_addons

  access_entries = {
    for idx, arn in var.eks_admin_principals :
    "admin_${idx}" => {
      principal_arn = arn
      policy_associations = {
        admin = {
          policy_arn = "arn:${data.aws_partition.current.partition}:eks::aws:cluster-access-policy/AmazonEKSClusterAdminPolicy"
          access_scope = {
            type = "cluster"
          }
        }
      }
    }
  }

  eks_managed_node_groups = {
    default = {
      min_size       = var.eks_min_size
      max_size       = var.eks_max_size
      desired_size   = var.eks_desired_size
      instance_types = var.eks_instance_types
      subnet_ids     = var.subnet_ids
    }
  }

  tags = var.tags
}
