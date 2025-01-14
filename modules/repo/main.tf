resource "github_repository" "repo" {
  name         = var.name
  description  = var.description
  homepage_url = var.homepage_url

  auto_init = false

  has_issues      = var.has_issues
  has_wiki        = var.has_wiki
  has_projects    = false
  has_discussions = var.has_discussions

  allow_merge_commit     = false
  allow_rebase_merge     = false
  allow_squash_merge     = true
  allow_update_branch    = true
  delete_branch_on_merge = true

  vulnerability_alerts = true
}

resource "github_branch" "main" {
  repository = github_repository.repo.name
  branch     = "main"
}

resource "github_branch_default" "default" {
  repository = github_repository.repo.name
  branch     = github_branch.main.branch
}

resource "github_branch_protection" "main" {
  repository_id    = github_repository.repo.name
  pattern          = github_branch.main.branch
  enforce_admins   = true
  allows_deletions = false
}
