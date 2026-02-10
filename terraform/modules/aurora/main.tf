data "aws_vpc" "selected" {
  id = var.vpc_id
}

# checkov:skip=CKV2_AWS_5: Security group is attached via module "this" vpc_security_group_ids.
resource "aws_security_group" "aurora" {
  name        = "${var.name}-sg"
  description = "Aurora access from EKS nodes"
  vpc_id      = var.vpc_id

  ingress {
    description     = "Aurora from EKS nodes"
    from_port       = var.aurora_port
    to_port         = var.aurora_port
    protocol        = "tcp"
    security_groups = [var.eks_node_security_group_id]
  }

  egress {
    description = "Aurora egress to VPC CIDR"
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = coalesce(var.allowed_egress_cidr_blocks, [data.aws_vpc.selected.cidr_block])
  }

  tags = var.tags
}

# checkov:skip=CKV_TF_1: Registry module pinned by version; commit hash not applicable.
module "this" {
  source  = "terraform-aws-modules/rds-aurora/aws"
  version = "10.2.0"

  name                   = var.name
  engine                 = var.engine
  engine_version         = var.engine_version
  cluster_instance_class = var.cluster_instance_class
  master_username        = var.master_username
  database_name          = var.database_name
  port                   = var.aurora_port

  manage_master_user_password = true
  apply_immediately           = true
  skip_final_snapshot         = true

  vpc_id                 = var.vpc_id
  subnets                = var.subnet_ids
  vpc_security_group_ids = [aws_security_group.aurora.id]

  instances = {
    writer = {}
    reader = {}
  }

  tags = var.tags
}
