variable "name" {
  description = "The name of the GitHub repository"
  type        = string
}

variable "description" {
  description = "Project description"
  type        = string
}

variable "topics" {
  description = "List of repository topics"
  type        = list(string)
  default     = []
}

variable "homepage_url" {
  description = "Project homepage URL"
  type        = string
  default     = null
}

variable "has_discussions" {
  description = "Whether to enable discussions"
  type        = bool
  default     = false
}

variable "has_issues" {
  description = "Whether to enable issues"
  type        = bool
  default     = true
}

variable "has_pages" {
  description = "Whether to enable GitHub Pages"
  type        = bool
  default     = false
}

variable "has_wiki" {
  description = "Whether to enable wiki"
  type        = bool
  default     = false
}

variable "dependencies_labels" {
  description = "Name for labels for dependencies upgrade"
  type        = list(string)
  default     = []
}

variable "extra_issue_labels" {
  description = "Issue labels to add to the builtin ones"
  type = list(
    object(
      {
        name        = string
        description = optional(string)
        color       = string
      }
    )
  )
  default = []
}

variable "action_variables" {
  description = "Environment variables for actions"
  type        = map(string)
  default     = {}
}

variable "pages_cname" {
  description = "CNAME for GitHub Pages custom domain"
  type        = string
  default     = null
}

variable "action_environments" {
  description = "Map action environment names to their tag pattern"
  type        = map(string)
  default     = {}
}
