resource "github_repository" "repo" {
  name         = var.name
  description  = var.description
  homepage_url = var.homepage_url
  topics       = var.topics

  auto_init = true

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

  security_and_analysis {
    secret_scanning {
      status = "enabled"
    }
    secret_scanning_push_protection {
      status = "enabled"
    }
  }

  dynamic "pages" {
    for_each = var.has_pages ? [true] : []
    content {
      build_type = "workflow"
      cname      = var.pages_cname
    }
  }

  lifecycle {
    ignore_changes = [
      pages[0].source, # source is not used for workflow builds
    ]
  }
}
