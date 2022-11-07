# Skaylink Terraform module template

This template repository is used as the baseline for Skaylink Terraform modules, please use this as your starting point when building new (public) modules.

Currently this repository is set to be private, but any repos you want to deploy as a module need to be public.

## Process

To create a new module, simply create a new repository from this template, build on it, and deploy it to the Terraform registry.

It is important to note that the template is a private repo, but the finished module has to be public. Do not remove the license file or the intro on the files. If you need to add more files, always add the license text first.

## Checks

We automatically run checks using GitHub workflows which ensures formatting, validation and vulnerebility checks are run.

## Support

If you need any support or guidance, don't hesitate to reach out to the Cloud Care team.
<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | <= 2.0.0 |
| <a name="requirement_azurerm"></a> [azurerm](#requirement\_azurerm) | <= 4.0.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_azurerm"></a> [azurerm](#provider\_azurerm) | 3.30.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [azurerm_bastion_host.bastion_host](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/bastion_host) | resource |
| [azurerm_public_ip.bastion_ip](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/public_ip) | resource |
| [azurerm_resource_group.rg](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/resource_group) | data source |
| [azurerm_subnet.bastion_snt](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/subnet) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_environment"></a> [environment](#input\_environment) | Environment you're deploying into | `string` | `"dev"` | no |
| <a name="input_resource_group_name"></a> [resource\_group\_name](#input\_resource\_group\_name) | The resource group you wish to deploy the Bastion host in | `string` | n/a | yes |
| <a name="input_subnet_id"></a> [subnet\_id](#input\_subnet\_id) | n/a | `string` | `null` | no |
| <a name="input_subnet_name"></a> [subnet\_name](#input\_subnet\_name) | n/a | `string` | `null` | no |
| <a name="input_usecase"></a> [usecase](#input\_usecase) | Use case for the Bastion host | `string` | n/a | yes |
| <a name="input_vnet_name"></a> [vnet\_name](#input\_vnet\_name) | n/a | `string` | `null` | no |
| <a name="input_vnet_resource_group"></a> [vnet\_resource\_group](#input\_vnet\_resource\_group) | n/a | `string` | `null` | no |

## Outputs

No outputs.
<!-- END_TF_DOCS -->