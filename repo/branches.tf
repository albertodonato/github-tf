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
