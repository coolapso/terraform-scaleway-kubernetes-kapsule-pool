resource "scaleway_k8s_pool" "node_pool" {
  cluster_id        = var.kapsule_cluster_id
  name              = var.pool_name
  node_type         = var.pool_node_type
  size              = var.pool_size
  min_size          = var.pool_min_size
  max_size          = var.pool_max_size
  autoscaling       = var.pool_autoscaling
  autohealing       = var.pool_autohealing
  container_runtime = var.pool_container_runtime
  kubelet_args      = var.pool_kubelet_args
  tags              = var.pool_tags

  upgrade_policy {
    max_surge       = var.pool_max_surge
    max_unavailable = var.pool_max_unavailable
  }

  lifecycle {
    ignore_changes = [
      size
    ]
  }
}
