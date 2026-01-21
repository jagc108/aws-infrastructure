variable "name" {
  description = "VPC base name."
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

variable "tags" {
  description = "Common tags."
  type        = map(string)
}
