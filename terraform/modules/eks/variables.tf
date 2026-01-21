variable "name" {
  description = "Nombre del cluster EKS."
  type        = string
}

variable "kubernetes_version" {
  description = "Version de Kubernetes."
  type        = string
}

variable "vpc_id" {
  description = "ID de la VPC."
  type        = string
}

variable "subnet_ids" {
  description = "Subnets para el cluster y los node groups."
  type        = list(string)
}

variable "endpoint_public_access_cidrs" {
  description = "CIDR blocks allowed to access the EKS public API endpoint."
  type        = list(string)
}

variable "eks_min_size" {
  description = "Tamaño minimo del node group."
  type        = number
}

variable "eks_max_size" {
  description = "Tamaño maximo del node group."
  type        = number
}

variable "eks_desired_size" {
  description = "Tamaño deseado del node group."
  type        = number
}

variable "eks_instance_types" {
  description = "Tipos de instancia para el node group."
  type        = list(string)
}

variable "eks_admin_principals" {
  description = "Lista de ARNs con permisos de admin via access entries."
  type        = list(string)
}

variable "tags" {
  description = "Tags comunes."
  type        = map(string)
}
