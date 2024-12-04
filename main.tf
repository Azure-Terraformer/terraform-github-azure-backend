resource "github_actions_environment_variable" "resource_group_name" {
  repository    = var.repository
  environment   = var.environment
  variable_name = var.resource_group_name_label
  value         = var.resource_group_name
}
resource "github_actions_environment_variable" "storage_account_name" {
  repository    = var.repository
  environment   = var.environment
  variable_name = var.storage_account_name_label
  value         = var.storage_account_name
}
resource "github_actions_environment_variable" "state_container_name" {
  repository    = var.repository
  environment   = var.environment
  variable_name = var.state_container_name_label
  value         = var.state_container_name
}
resource "github_actions_environment_variable" "plan_container_name" {
  repository    = var.repository
  environment   = var.environment
  variable_name = var.plan_container_name_label
  value         = var.plan_container_name
}
