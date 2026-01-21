variable "project" {
  description = "Nombre del proyecto que se usará como prefijo."
  type        = string
}

variable "environment" {
  description = "Entorno (dev, stage, prod, ...)."
  type        = string
}

variable "region" {
  description = "Región de AWS donde desplegar el EKS."
  type        = string
}

variable "vpc_cidr" {
  description = "CIDR de la VPC."
  type        = string
}

variable "availability_zones" {
  description = "AZs a usar en la región."
  type        = list(string)
}

variable "public_subnets_cidrs" {
  description = "CIDRs para subnets públicas."
  type        = list(string)
}

variable "private_subnets_cidrs" {
  description = "CIDRs para subnets privadas."
  type        = list(string)
}

variable "kubernetes_version" {
  description = "Versión de Kubernetes para el clúster de EKS."
  type        = string
}

variable "eks_instance_types" {
  description = "Tipos de instancia para los node groups."
  type        = list(string)
}

variable "eks_endpoint_public_access_cidrs" {
  description = "CIDR blocks permitidos para el endpoint publico de EKS."
  type        = list(string)
}

variable "eks_min_size" {
  description = "Tamaño mínimo del node group."
  type        = number
}

variable "eks_max_size" {
  description = "Tamaño máximo del node group."
  type        = number
}

variable "eks_desired_size" {
  description = "Tamaño deseado del node group."
  type        = number
}

variable "eks_admin_principals" {
  description = "Lista de ARNs que tendran acceso admin al cluster via access entries."
  type        = list(string)
}

# Opcional si quieres parametrizar el profile
variable "aws_profile" {
  description = "AWS profile (si se usa)."
  type        = string
}

variable "aurora_engine" {
  description = "Motor de Aurora (aurora-mysql o aurora-postgresql)."
  type        = string
}

variable "aurora_engine_version" {
  description = "Version del motor de Aurora."
  type        = string
}

variable "aurora_instance_class" {
  description = "Clase de instancia para Aurora."
  type        = string
}

variable "aurora_master_username" {
  description = "Usuario administrador de Aurora."
  type        = string
}

variable "aurora_database_name" {
  description = "Nombre de la base de datos inicial."
  type        = string
}

variable "aurora_port" {
  description = "Puerto de Aurora (3306 MySQL, 5432 PostgreSQL)."
  type        = number
}
