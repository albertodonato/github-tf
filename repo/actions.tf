resource "github_actions_variable" "repo" {
  repository = github_repository.repo.name

  for_each = var.action_variables

  variable_name = each.key
  value         = each.value
}
