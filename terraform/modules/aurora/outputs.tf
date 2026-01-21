output "cluster_endpoint" {
  description = "Endpoint writer de Aurora."
  value       = module.this.cluster_endpoint
}

output "cluster_reader_endpoint" {
  description = "Endpoint reader de Aurora."
  value       = module.this.cluster_reader_endpoint
}
