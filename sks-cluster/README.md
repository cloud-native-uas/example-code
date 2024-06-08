# sks-cluster
This module creates an Exoscale SKS cluster with a node pool. It uses an SKS storage bucket to store the tofu state.

## Prerequisites
- An Exoscale account
- An Exoscale API key and secret
- OpenTofu installed on the local machine
- Environment variables "AWS_ACCESS_KEY_ID" and "AWS_SECRET_ACCESS_KEY" set to the Exoscale API key and secret

Furthermore, the exoscale API key and secret must be provided as input to the module.

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_exoscale"></a> [exoscale](#requirement\_exoscale) | 0.59.1 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_exoscale"></a> [exoscale](#provider\_exoscale) | 0.59.1 |
| <a name="provider_local"></a> [local](#provider\_local) | 2.5.1 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [exoscale_security_group.my_security_group](https://registry.terraform.io/providers/exoscale/exoscale/0.59.1/docs/resources/security_group) | resource |
| [exoscale_security_group_rule.cilium_health](https://registry.terraform.io/providers/exoscale/exoscale/0.59.1/docs/resources/security_group_rule) | resource |
| [exoscale_security_group_rule.cilium_health_tcp](https://registry.terraform.io/providers/exoscale/exoscale/0.59.1/docs/resources/security_group_rule) | resource |
| [exoscale_security_group_rule.cilium_vxlan](https://registry.terraform.io/providers/exoscale/exoscale/0.59.1/docs/resources/security_group_rule) | resource |
| [exoscale_security_group_rule.kubelet](https://registry.terraform.io/providers/exoscale/exoscale/0.59.1/docs/resources/security_group_rule) | resource |
| [exoscale_security_group_rule.node_ports](https://registry.terraform.io/providers/exoscale/exoscale/0.59.1/docs/resources/security_group_rule) | resource |
| [exoscale_sks_cluster.my_sks_cluster](https://registry.terraform.io/providers/exoscale/exoscale/0.59.1/docs/resources/sks_cluster) | resource |
| [exoscale_sks_kubeconfig.my_sks_kubeconfig](https://registry.terraform.io/providers/exoscale/exoscale/0.59.1/docs/resources/sks_kubeconfig) | resource |
| [exoscale_sks_nodepool.my_sks_nodepool](https://registry.terraform.io/providers/exoscale/exoscale/0.59.1/docs/resources/sks_nodepool) | resource |
| [local_sensitive_file.my_sks_kubeconfig_file](https://registry.terraform.io/providers/hashicorp/local/latest/docs/resources/sensitive_file) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_exo_key"></a> [exo\_key](#input\_exo\_key) | n/a | `string` | n/a | yes |
| <a name="input_exo_secret"></a> [exo\_secret](#input\_exo\_secret) | n/a | `string` | `"your_secret"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_my_sks_cluster_endpoint"></a> [my\_sks\_cluster\_endpoint](#output\_my\_sks\_cluster\_endpoint) | Outputs |
| <a name="output_my_sks_connection"></a> [my\_sks\_connection](#output\_my\_sks\_connection) | n/a |
| <a name="output_my_sks_kubeconfig"></a> [my\_sks\_kubeconfig](#output\_my\_sks\_kubeconfig) | n/a |
<!-- END_TF_DOCS -->
