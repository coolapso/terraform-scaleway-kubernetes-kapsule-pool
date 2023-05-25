[![semantic-release](https://img.shields.io/badge/%20%20%F0%9F%93%A6%F0%9F%9A%80-semantic--release-e10079.svg)](https://github.com/semantic-release/semantic-release)

# Terraform Scaleway Kapsule

A Terraform module that creates a Kubernetes kapsule node pool

## How to use

Examples directory contains examples on how to use this module.  

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 0.13 |
| <a name="requirement_scaleway"></a> [scaleway](#requirement\_scaleway) | 2.1.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_scaleway"></a> [scaleway](#provider\_scaleway) | 2.1.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [scaleway_k8s_pool.node_pool](https://registry.terraform.io/providers/scaleway/scaleway/2.1.0/docs/resources/k8s_pool) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_kapsule_cluster_id"></a> [kapsule\_cluster\_id](#input\_kapsule\_cluster\_id) | The ID of the kapsule cluster | `string` | n/a | yes |
| <a name="input_pool_autohealing"></a> [pool\_autohealing](#input\_pool\_autohealing) | Enables the autohealing feature for this pool | `bool` | `null` | no |
| <a name="input_pool_autoscaling"></a> [pool\_autoscaling](#input\_pool\_autoscaling) | enables/disables cluster autoscalling features | `bool` | `null` | no |
| <a name="input_pool_container_runtime"></a> [pool\_container\_runtime](#input\_pool\_container\_runtime) | The container runtime of the pool | `string` | `null` | no |
| <a name="input_pool_kubelet_args"></a> [pool\_kubelet\_args](#input\_pool\_kubelet\_args) | The Kubelet arguments to be used by this pool | `map(string)` | `null` | no |
| <a name="input_pool_max_size"></a> [pool\_max\_size](#input\_pool\_max\_size) | The maximum size of the pool, used by the autoscaling feature | `number` | `null` | no |
| <a name="input_pool_max_surge"></a> [pool\_max\_surge](#input\_pool\_max\_surge) | The maximum number of nodes to be created during the upgrade | `number` | `null` | no |
| <a name="input_pool_max_unavailable"></a> [pool\_max\_unavailable](#input\_pool\_max\_unavailable) | The maximum number of nodes that can be not ready at the same time | `number` | `null` | no |
| <a name="input_pool_min_size"></a> [pool\_min\_size](#input\_pool\_min\_size) | The minimum size of the pool, used by the autoscaling feature | `number` | `null` | no |
| <a name="input_pool_name"></a> [pool\_name](#input\_pool\_name) | The name for the pool | `string` | n/a | yes |
| <a name="input_pool_node_type"></a> [pool\_node\_type](#input\_pool\_node\_type) | The commercial type of the pool instances | `string` | n/a | yes |
| <a name="input_pool_size"></a> [pool\_size](#input\_pool\_size) | The size of the pool | `number` | n/a | yes |
| <a name="input_pool_tags"></a> [pool\_tags](#input\_pool\_tags) | The tags associated with the pool | `list(string)` | `null` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_cluster_id"></a> [cluster\_id](#output\_cluster\_id) | The Node Pool ID |
| <a name="output_pool_node_type"></a> [pool\_node\_type](#output\_pool\_node\_type) | Type of nodes in the pool |
| <a name="output_pool_nodes"></a> [pool\_nodes](#output\_pool\_nodes) | Pool Nodes info |
| <a name="output_pool_status"></a> [pool\_status](#output\_pool\_status) | Node pool status |
<!-- END_TF_DOCS -->

# Contributions

Improvements and suggestions are always welcome, feel free to open an Issue or Pull Request

If you like this theme and want to support / contribute in a different way you can always: 

<a href="https://www.buymeacoffee.com/4s3ti" target="_blank"><img src="https://cdn.buymeacoffee.com/buttons/default-yellow.png" alt="Buy Me A Coffee" style="height: 51px !important;width: 217px !important;" >
