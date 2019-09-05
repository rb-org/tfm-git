provider "github" {
  token        = "${var.github_token}"
  organization = "${var.github_organization}"
}

module "terraform" {
  source = "./terraform"

  github_token        = "${var.github_token}"
  circleci_token      = "${var.circleci_token}"
  github_organization = "${var.github_organization}"
  gh_team_id_admins   = "${data.github_team.admins.id}"
}

# module "cs-api" {
#   source = "./cs-api"

#   name_prefix         = "cs-api"
#   desc_prefix         = "Terraform - CS API"
#   github_token        = "${var.github_token}"
#   circleci_token      = "${var.circleci_token}"
#   github_organization = "${var.github_organization}"
#   gh_team_id_admins   = "${data.github_team.admins.id}"
# }

# module "docker" {
#   source = "./docker"

#   github_token        = "${var.github_token}"
#   circleci_token      = "${var.circleci_token}"
#   github_organization = "${var.github_organization}"
#   gh_team_id_admins   = "${data.github_team.admins.id}"
# }
