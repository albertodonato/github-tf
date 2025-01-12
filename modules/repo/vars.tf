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
  description = "Enable discussions"
  type        = bool
  default     = false
}
