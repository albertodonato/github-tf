variable "name" {
  description = "The name of the GitHub repository"
  type        = string
}

variable "description" {
  description = "Project description"
  type        = string
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

variable "has_wiki" {
  description = "Whether to enable wiki"
  type        = bool
  default     = false
}
