output "vpc_id" {
  description = "ID de la VPC."
  value       = module.vpc.vpc_id
}

output "public_subnets" {
  description = "IDs de subnets publicas."
  value       = module.vpc.public_subnets
}

output "private_subnets" {
  description = "IDs de subnets privadas."
  value       = module.vpc.private_subnets
}

output "eks_cluster_name" {
  description = "Nombre del cluster EKS."
  value       = module.eks.cluster_name
}

output "eks_cluster_endpoint" {
  description = "Endpoint del cluster EKS."
  value       = module.eks.cluster_endpoint
}

output "aurora_cluster_endpoint" {
  description = "Endpoint writer de Aurora."
  value       = module.aurora.cluster_endpoint
}

output "aurora_reader_endpoint" {
  description = "Endpoint reader de Aurora."
  value       = module.aurora.cluster_reader_endpoint
}
