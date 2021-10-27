[![Build Status](https://travis-ci.com/4s3ti/kapsule-pool.svg?branch=master)](https://travis-ci.com/4s3ti/kapsule-pool)
[![semantic-release](https://img.shields.io/badge/%20%20%F0%9F%93%A6%F0%9F%9A%80-semantic--release-e10079.svg)](https://github.com/semantic-release/semantic-release)

# Terraform Scaleway Kapsule

A Terraform module that creates a Kubernetes kapsule node pool

## Module Requirements

* terraform > 0.13
* Scaleway account
* Scaleway Kapsule cluster


## How to use

Examples directory contains examples on how to use this module.  

## File and directory structure

|     Directory / file      |         Content                             |
----------------------------|---------------------------------------------|
| examples/terraform        | Contains terraform example usage            |
| examples/terragrunt       | Contains Terragrunt example usage           |
| README.md                 | This file!                                  |
| main.tf                   | Main terraform with deployment code         |
| variables.tf              | Terraform variables file                    |
| versions.tf               | Required providers and versions             |


## Inputs

| Input name                         |          | Default value | Accepted Values | Description                                                         |
|------------------------------------|----------|---------------|-----------------|---------------------------------------------------------------------|
| Kapsule clsuter id                 | Required |               | Read Docs*      |                                                                     |
| pool_name                          | Required |               | string          | The node pool name                                                  |
| pool_node_type                     | Required |               | Read Docs*      | The commercial type of the pool instances                           |
| pool_size                          | Required |               | Number          | The size of the pool (number of nodes in the pool)                  |
| pool_min_size                      | Optional |               | Number          | The pool minimum size, used by the auto-scaling feature             |
| pool_max_size                      | Optional |               | Number          | The pool maximum size, used by the auto-scaling feature             |
| pool_autohealing                   | Optional |               | true/false      | Enables the auto-healing feature                                    |
| pool_container_runtime             | Optional |               | Read Docs*      | The container runtime to be used                                    |
| pool_kubelet_args                  | Optional |               | Read Docs*      | The kubelet arguments tu be used by this pool                       |
| pool_tags                          | Optional |               | List of strings | List of tags to be applied to the pool                              |
| pool_max_surge                     | Optional |               | Number          | The maximum number of nodes to be created during the upgrade        |
| pool_max_unavailable               | Optional |               | Number          | The maximum number of nodes that can be "not ready" at the same time|


## External Documentation

*Please Refer to this documentation to find more about what values are accepted in this module arguments, as they can change due to provider updates.

https://registry.terraform.io/modules/terraform-aws-modules/eks/aws/latest

https://registry.terraform.io/providers/scaleway/scaleway/latest/docs/resources/k8s_pool
