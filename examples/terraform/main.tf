locals {
  tags               = ["example", "test", "ci", "kapsule-pool"]
  enable_autoscaling = false
}

module "k8s-cluster" {
  source = "github.com/4s3ti/kapsule-cluster"

  enable_cluster_autoscaler   = false
  cluster_name                = "pool-test-cluster"
  cluster_description         = "My Test scaleway kapsule"
  cluster_version             = "1.27"
  cluster_cni                 = "calico"
  cluster_tags                = local.tags
  delete_additional_resources = true
  auto_upgrade                = true
}


module "k8s-pool" {
  source = "../../"

  kapsule_cluster_id = module.k8s-cluster.cluster_id
  pool_name          = "pool-test"
  pool_node_type     = "DEV1-M"
  pool_size          = 2
  pool_autoscaling   = local.enable_autoscaling
  pool_autohealing   = false
  pool_tags          = local.tags

  depends_on = [module.k8s-cluster]
}
