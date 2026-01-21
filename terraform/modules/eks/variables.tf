variable "name" {
  description = "EKS cluster name."
  type        = string
}

variable "kubernetes_version" {
  description = "Kubernetes version."
  type        = string
}

variable "vpc_id" {
  description = "VPC ID."
  type        = string
}

variable "subnet_ids" {
  description = "Subnets for the cluster and node groups."
  type        = list(string)
}

variable "endpoint_public_access_cidrs" {
  description = "CIDR blocks allowed to access the EKS public API endpoint."
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

variable "eks_instance_types" {
  description = "Node group instance types."
  type        = list(string)
}

variable "eks_admin_principals" {
  description = "List of ARNs with admin permissions via access entries."
  type        = list(string)
}

variable "tags" {
  description = "Common tags."
  type        = map(string)
}
