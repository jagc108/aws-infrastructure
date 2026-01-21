variable "name" {
  description = "Nombre base de la VPC."
  type        = string
}

variable "vpc_cidr" {
  description = "CIDR de la VPC."
  type        = string
}

variable "availability_zones" {
  description = "AZs a usar en la region."
  type        = list(string)
}

variable "public_subnets_cidrs" {
  description = "CIDRs para subnets publicas."
  type        = list(string)
}

variable "private_subnets_cidrs" {
  description = "CIDRs para subnets privadas."
  type        = list(string)
}

variable "tags" {
  description = "Tags comunes."
  type        = map(string)
}
