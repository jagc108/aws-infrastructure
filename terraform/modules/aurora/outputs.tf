output "cluster_endpoint" {
  description = "Aurora writer endpoint."
  value       = module.this.cluster_endpoint
}

output "cluster_reader_endpoint" {
  description = "Aurora reader endpoint."
  value       = module.this.cluster_reader_endpoint
}
