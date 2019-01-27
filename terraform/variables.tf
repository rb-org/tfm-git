# Variables

variable "name_prefix" {
  default = "tfm"
}

variable "desc_prefix" {
  default = "Terraform - AWS"
}

variable "github_token" {}
variable "circleci_token" {}

variable "github_organization" {
  default = ""
}
