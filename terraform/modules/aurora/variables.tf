variable "name" {
  description = "Aurora cluster name."
  type        = string
}

variable "engine" {
  description = "Aurora engine."
  type        = string
}

variable "engine_version" {
  description = "Engine version."
  type        = string
}

variable "cluster_instance_class" {
  description = "Cluster instance class."
  type        = string
}

variable "master_username" {
  description = "Admin username."
  type        = string
}

variable "database_name" {
  description = "Initial database name."
  type        = string
}

variable "aurora_port" {
  description = "Aurora port used by the cluster and security group."
  type        = number
}

variable "vpc_id" {
  description = "VPC ID."
  type        = string
}

variable "subnet_ids" {
  description = "Private subnets for Aurora."
  type        = list(string)
}

variable "eks_node_security_group_id" {
  description = "EKS node security group to allow access."
  type        = string
}

variable "allowed_egress_cidr_blocks" {
  description = "CIDR blocks allowed for Aurora egress. Defaults to the VPC CIDR."
  type        = list(string)
  default     = null
}

variable "tags" {
  description = "Common tags."
  type        = map(string)
}
