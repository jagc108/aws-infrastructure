project               = "demo"
environment           = "test"
region                = "us-east-1"
vpc_cidr              = "10.0.0.0/16"
availability_zones    = ["us-east-1a", "us-east-1b", "us-east-1c"]
public_subnets_cidrs  = ["10.0.0.0/24", "10.0.1.0/24", "10.0.2.0/24"]
private_subnets_cidrs = ["10.0.10.0/24", "10.0.11.0/24", "10.0.12.0/24"]

kubernetes_version               = "1.33"
eks_instance_types               = ["t3.small"]
eks_min_size                     = 2
eks_max_size                     = 4
eks_desired_size                 = 2
eks_endpoint_public_access_cidrs = ["203.0.113.10/32"]

eks_addons = {
  coredns = {
    addon_version = "v1.13.1-eksbuild.1"
  }
  "eks-pod-identity-agent" = {
    addon_version = "v1.3.10-eksbuild.2"
  }
  "kube-proxy" = {
    addon_version = "v1.33.7-eksbuild.2"
  }
  "vpc-cni" = {
    addon_version = "v1.21.1-eksbuild.3"
  }
}

eks_admin_principals = []
aws_profile          = null

aurora_engine          = "aurora-mysql"
aurora_engine_version  = "8.0.mysql_aurora.3.06.0"
aurora_instance_class  = "db.r6g.large"
aurora_master_username = "admin"
aurora_database_name   = "appdb"
aurora_port            = 3306
