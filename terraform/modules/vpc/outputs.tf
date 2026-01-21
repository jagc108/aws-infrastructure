output "vpc_id" {
  description = "ID de la VPC."
  value       = module.this.vpc_id
}

output "public_subnets" {
  description = "IDs de subnets publicas."
  value       = module.this.public_subnets
}

output "private_subnets" {
  description = "IDs de subnets privadas."
  value       = module.this.private_subnets
}
