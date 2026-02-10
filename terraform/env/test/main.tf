module "vpc" {
  source = "../../modules/vpc"

  name                  = local.name
  vpc_cidr              = var.vpc_cidr
  availability_zones    = var.availability_zones
  public_subnets_cidrs  = var.public_subnets_cidrs
  private_subnets_cidrs = var.private_subnets_cidrs

  tags = local.tags
}

module "eks" {
  source = "../../modules/eks"

  name               = local.name
  kubernetes_version = var.kubernetes_version
  vpc_id             = module.vpc.vpc_id
  subnet_ids         = module.vpc.private_subnets

  endpoint_public_access_cidrs = var.eks_endpoint_public_access_cidrs
  eks_min_size                 = var.eks_min_size
  eks_max_size                 = var.eks_max_size
  eks_desired_size             = var.eks_desired_size
  eks_instance_types           = var.eks_instance_types
  eks_addons                   = var.eks_addons

  eks_admin_principals = var.eks_admin_principals

  tags = local.tags
}

module "aurora" {
  source = "../../modules/aurora"

  name                   = "${local.name}-aurora"
  engine                 = var.aurora_engine
  engine_version         = var.aurora_engine_version
  cluster_instance_class = var.aurora_instance_class
  master_username        = var.aurora_master_username
  database_name          = var.aurora_database_name
  aurora_port            = var.aurora_port

  vpc_id                     = module.vpc.vpc_id
  subnet_ids                 = module.vpc.private_subnets
  eks_node_security_group_id = module.eks.node_security_group_id

  tags = local.tags
}
