output "cluster_id" {
  description = "The Node Pool ID"
  value       = scaleway_k8s_pool.node_pool.id
}

output "pool_status" {
  description = "Node pool status"
  value       = scaleway_k8s_pool.node_pool.status
}

output "pool_nodes" {
  description = "Pool Nodes info"
  value       = scaleway_k8s_pool.node_pool.nodes
}

output "pool_node_type" {
  description = "Type of nodes in the pool"
  value       = scaleway_k8s_pool.node_pool.node_type
  sensitive   = true
}
