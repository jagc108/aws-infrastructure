# checkov:skip=CKV_TF_1: Registry module pinned by version; commit hash not applicable.
module "this" {
  source  = "terraform-aws-modules/vpc/aws"
  version = "6.6.0"

  name = var.name
  cidr = var.vpc_cidr

  azs             = var.availability_zones
  public_subnets  = var.public_subnets_cidrs
  private_subnets = var.private_subnets_cidrs

  enable_nat_gateway   = true
  single_nat_gateway   = true
  enable_dns_support   = true
  enable_dns_hostnames = true

  public_subnet_tags = {
    "kubernetes.io/role/elb" = "1"
  }

  private_subnet_tags = {
    "kubernetes.io/role/internal-elb" = "1"
  }

  tags = var.tags
}
