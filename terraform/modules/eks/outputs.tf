output "cluster_name" {
  description = "Nombre del cluster EKS."
  value       = module.this.cluster_name
}

output "cluster_endpoint" {
  description = "Endpoint del cluster EKS."
  value       = module.this.cluster_endpoint
}

output "node_security_group_id" {
  description = "Security group de los nodos EKS."
  value       = module.this.node_security_group_id
}
