# Variables

variable "name_prefix" {
  default = "dckr"
}

variable "desc_prefix" {
  default = "DockerFiles"
}

variable "github_token" {}
variable "circleci_token" {}

variable "github_organization" {
  default = ""
}

variable "gh_team_id_admins" {}
