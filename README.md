This Terraform module automates the configuration of GitHub Actions environment variables essential for managing an Azure Terraform project. Specifically, it sets up environment variables for the Terraform State Backend containing an Azure resource group, storage account and storage containers for Terraform State and compiled plan files. 

By managing these variables through Terraform, the module ensures consistent and secure configuration, facilitating seamless integration and automation for Terraform and Azure-based projects as part of the GitHub AT-AT framework.

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_github"></a> [github](#requirement\_github) | ~> 5.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_github"></a> [github](#provider\_github) | ~> 5.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [github_actions_environment_variable.plan_container_name](https://registry.terraform.io/providers/integrations/github/latest/docs/resources/actions_environment_variable) | resource |
| [github_actions_environment_variable.resource_group_name](https://registry.terraform.io/providers/integrations/github/latest/docs/resources/actions_environment_variable) | resource |
| [github_actions_environment_variable.state_container_name](https://registry.terraform.io/providers/integrations/github/latest/docs/resources/actions_environment_variable) | resource |
| [github_actions_environment_variable.storage_account_name](https://registry.terraform.io/providers/integrations/github/latest/docs/resources/actions_environment_variable) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_environment"></a> [environment](#input\_environment) | The GitHub Actions environment (e.g., 'production', 'staging') where the variables and secrets will be set. | `string` | n/a | yes |
| <a name="input_plan_container_name"></a> [plan\_container\_name](#input\_plan\_container\_name) | The name of the Azure Blob Storage container designated for storing Terraform plan files. This container allows for the tracking and auditing of infrastructure changes before they are applied. | `string` | n/a | yes |
| <a name="input_plan_container_name_label"></a> [plan\_container\_name\_label](#input\_plan\_container\_name\_label) | The label/name used for the Azure Storage container name variable as referenced in GitHub Actions. | `string` | `"BACKEND_STORAGE_PLAN_CONTAINER_NAME"` | no |
| <a name="input_repository"></a> [repository](#input\_repository) | The name of the GitHub repository where the environment variables will be created. | `string` | n/a | yes |
| <a name="input_resource_group_name"></a> [resource\_group\_name](#input\_resource\_group\_name) | The name of the Azure Resource Group that contains the Azure Storage Account used for the Terraform State backend. | `string` | n/a | yes |
| <a name="input_resource_group_name_label"></a> [resource\_group\_name\_label](#input\_resource\_group\_name\_label) | The label/name used for the resource group environment variable as referenced in GitHub Actions. | `string` | `"BACKEND_RESOURCE_GROUP_NAME"` | no |
| <a name="input_state_container_name"></a> [state\_container\_name](#input\_state\_container\_name) | The name of the Azure Blob Storage container within the Storage Account where Terraform state files will be stored. This container facilitates the management and retrieval of state information. | `string` | n/a | yes |
| <a name="input_state_container_name_label"></a> [state\_container\_name\_label](#input\_state\_container\_name\_label) | The label/name used for the state container environment variable as referenced in GitHub Actions. | `string` | `"BACKEND_STORAGE_STATE_CONTAINER_NAME"` | no |
| <a name="input_storage_account_name"></a> [storage\_account\_name](#input\_storage\_account\_name) | The name of the Azure Storage Account used to store Terraform state files. This account ensures that the state is securely maintained and accessible across different runs of Terraform. | `string` | n/a | yes |
| <a name="input_storage_account_name_label"></a> [storage\_account\_name\_label](#input\_storage\_account\_name\_label) | The label/name used for the storage account environment variable as referenced in GitHub Actions. | `string` | `"BACKEND_STORAGE_ACCOUNT_NAME"` | no |

## Outputs

No outputs.
<!-- END_TF_DOCS -->