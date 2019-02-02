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
