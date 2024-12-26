variable "repository" {
  type        = string
  description = "The name of the GitHub repository where the environment variables will be created."
}
variable "environment" {
  type        = string
  description = "The GitHub Actions environment (e.g., 'production', 'staging') where the variables and secrets will be set."
}
variable "resource_group_name" {
  type        = string
  description = "The name of the Azure Resource Group that contains the Azure Storage Account used for the Terraform State backend."
}
variable "storage_account_name" {
  type        = string
  description = "The name of the Azure Storage Account used to store Terraform state files. This account ensures that the state is securely maintained and accessible across different runs of Terraform."
}
variable "state_container_name" {
  type        = string
  description = "The name of the Azure Blob Storage container within the Storage Account where Terraform state files will be stored. This container facilitates the management and retrieval of state information."
}
variable "plan_container_name" {
  type        = string
  description = "The name of the Azure Blob Storage container designated for storing Terraform plan files. This container allows for the tracking and auditing of infrastructure changes before they are applied."
}
variable "resource_group_name_label" {
  type        = string
  default     = "BACKEND_RESOURCE_GROUP_NAME"
  description = "The label/name used for the resource group environment variable as referenced in GitHub Actions."
}
variable "storage_account_name_label" {
  type        = string
  default     = "BACKEND_STORAGE_ACCOUNT_NAME"
  description = "The label/name used for the storage account environment variable as referenced in GitHub Actions."
}
variable "state_container_name_label" {
  type        = string
  default     = "BACKEND_STORAGE_STATE_CONTAINER_NAME"
  description = "The label/name used for the state container environment variable as referenced in GitHub Actions."
}
variable "plan_container_name_label" {
  type        = string
  default     = "BACKEND_STORAGE_PLAN_CONTAINER_NAME"
  description = "The label/name used for the Azure Storage container name variable as referenced in GitHub Actions."
}
