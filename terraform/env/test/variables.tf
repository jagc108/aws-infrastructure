variable "project" {
  description = "Project name used as a prefix."
  type        = string
}

variable "environment" {
  description = "Environment (dev, stage, prod, ...)."
  type        = string
}

variable "region" {
  description = "AWS region to deploy EKS."
  type        = string
}

variable "vpc_cidr" {
  description = "VPC CIDR."
  type        = string
}

variable "availability_zones" {
  description = "AZs to use in the region."
  type        = list(string)
}

variable "public_subnets_cidrs" {
  description = "CIDRs for public subnets."
  type        = list(string)
}

variable "private_subnets_cidrs" {
  description = "CIDRs for private subnets."
  type        = list(string)
}

variable "kubernetes_version" {
  description = "Kubernetes version for the EKS cluster."
  type        = string
}

variable "eks_instance_types" {
  description = "Instance types for the node groups."
  type        = list(string)
}

variable "eks_endpoint_public_access_cidrs" {
  description = "CIDR blocks allowed for the EKS public endpoint."
  type        = list(string)
}

variable "eks_min_size" {
  description = "Minimum node group size."
  type        = number
}

variable "eks_max_size" {
  description = "Maximum node group size."
  type        = number
}

variable "eks_desired_size" {
  description = "Desired node group size."
  type        = number
}

variable "eks_addons" {
  description = "EKS addons configuration map passed to the EKS module."
  type        = map(any)
}

variable "eks_admin_principals" {
  description = "List of ARNs that have admin access to the cluster via access entries."
  type        = list(string)
}

# Opcional si quieres parametrizar el profile
variable "aws_profile" {
  description = "AWS profile (if used)."
  type        = string
}

variable "aurora_engine" {
  description = "Aurora engine (aurora-mysql or aurora-postgresql)."
  type        = string
}

variable "aurora_engine_version" {
  description = "Aurora engine version."
  type        = string
}

variable "aurora_instance_class" {
  description = "Aurora instance class."
  type        = string
}

variable "aurora_master_username" {
  description = "Aurora admin username."
  type        = string
}

variable "aurora_database_name" {
  description = "Initial database name."
  type        = string
}

variable "aurora_port" {
  description = "Aurora port (3306 MySQL, 5432 PostgreSQL)."
  type        = number
}
