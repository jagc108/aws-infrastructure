variable "name" {
  description = "Nombre del cluster Aurora."
  type        = string
}

variable "engine" {
  description = "Motor de Aurora."
  type        = string
}

variable "engine_version" {
  description = "Version del motor."
  type        = string
}

variable "cluster_instance_class" {
  description = "Clase de instancia para el cluster."
  type        = string
}

variable "master_username" {
  description = "Usuario administrador."
  type        = string
}

variable "database_name" {
  description = "Nombre de la base de datos inicial."
  type        = string
}

variable "aurora_port" {
  description = "Puerto de Aurora usado por el cluster y el security group."
  type        = number
}

variable "vpc_id" {
  description = "ID de la VPC."
  type        = string
}

variable "subnet_ids" {
  description = "Subnets privadas para Aurora."
  type        = list(string)
}

variable "eks_node_security_group_id" {
  description = "Security group de nodos EKS para permitir acceso."
  type        = string
}

variable "allowed_egress_cidr_blocks" {
  description = "CIDR blocks allowed for Aurora egress. Defaults to the VPC CIDR."
  type        = list(string)
  default     = null
}

variable "tags" {
  description = "Tags comunes."
  type        = map(string)
}
