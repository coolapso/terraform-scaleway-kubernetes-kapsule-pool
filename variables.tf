variable "kapsule_cluster_id" {
  description = "The ID of the kapsule cluster"
}

variable "pool_autoscaling" {
  description = "enables/disables cluster autoscalling features"
}

variable "pool_name" {
  description = "The name for the pool"
}

variable "pool_node_type" {
  description = "The commercial type of the pool instances"
}

variable "pool_size" {
  description = "The size of the pool"
}

variable "pool_min_size" {
  description = "The minimum size of the pool, used by the autoscaling feature"
  default     = null
}

variable "pool_max_size" {
  description = "The maximum size of the pool, used by the autoscaling feature"
  default     = null
}

variable "pool_autohealing" {
  description = "Enables the autohealing feature for this pool"
  default     = null
}

variable "pool_container_runtime" {
  description = "The container runtime of the pool"
  default     = null
}

variable "pool_kubelet_args" {
  type        = map(string)
  description = "The Kubelet arguments to be used by this pool"
  default     = null
}

variable "pool_tags" {
  type        = list(string)
  description = "The tags associated with the pool"
  default     = null
}

variable "pool_max_surge" {
  description = "The maximum number of nodes to be created during the upgrade"
  default     = null
}

variable "pool_max_unavailable" {
  description = "The maximum number of nodes that can be not ready at the same time"
  default     = null
}
