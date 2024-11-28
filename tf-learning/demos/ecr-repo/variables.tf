variable "repo_names" {
  type = list(string)
  description = "Name of the repository"
  default = []
}

variable "image_tag_mutability" {
  type = string
  description = "The tag mutability setting for the repository. Must be one of: MUTABLE or IMMUTABLE. Defaults to MUTABLE"
  default = ""
}

variable "scan_on_push" {
  type = bool
  description = "Indicates whether images are scanned after being pushed to the repository (true) or not scanned (false)"
  default = true
}

variable "policy" {}