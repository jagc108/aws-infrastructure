output "cluster_name" {
  description = "EKS cluster name."
  value       = module.this.cluster_name
}

output "cluster_endpoint" {
  description = "EKS cluster endpoint."
  value       = module.this.cluster_endpoint
}

output "node_security_group_id" {
  description = "EKS node security group."
  value       = module.this.node_security_group_id
}
