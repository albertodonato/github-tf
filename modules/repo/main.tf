locals {
  default_issue_labels = [
    {
      name        = "bug"
      description = "Something isn't working"
      color       = "d73a4a"
    },
    {
      name        = "documentation"
      description = "Improvements or additions to documentation"
      color       = "0075ca"
    },
    {
      name        = "duplicate"
      description = "This issue or pull request already exists"
      color       = "cfd3d7"
    },
    {
      name        = "enhancement"
      description = "New feature or request"
      color       = "a2eeef"
    },
    {
      name        = "good first issue"
      description = "Good for newcomers"
      color       = "7057ff"
    },
    {
      name        = "help wanted"
      description = "Extra attention is needed"
      color       = "008672"
    },
    {
      name        = "invalid"
      description = "This doesn't seem right"
      color       = "e4e669"
    },
    {
      name        = "question"
      description = "Further information is requested"
      color       = "d876e3"
    },
    {
      name        = "wontfix"
      description = "This will not be worked on"
      color       = "ffffff"
    },
  ]
}

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

resource "github_issue_labels" "repo" {
  repository = github_repository.repo.name

  dynamic "label" {
    for_each = concat(
      local.default_issue_labels,
      var.extra_issue_labels,
    )

    content {
      name        = label.value.name
      description = label.value.description
      color       = label.value.color
    }
  }
}
