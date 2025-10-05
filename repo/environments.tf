resource "github_repository_environment" "repo" {
  for_each = var.action_environments

  repository  = github_repository.repo.name
  environment = each.key

  deployment_branch_policy {
    custom_branch_policies = true
    protected_branches     = false
  }
}

resource "github_repository_environment_deployment_policy" "repo" {
  for_each = var.action_environments

  repository  = github_repository.repo.name
  environment = each.key
  tag_pattern = each.value

  depends_on = [github_repository_environment.repo]
}
