module "cs_api_app" {
  source = "github.com/rb-org/terraform-aws-rb-github?ref=v0.0.6"

  repo_name          = "${var.name_prefix}-app"
  repo_description   = "CS API - App"
  license_template   = "mit"
  private_repo       = false
  github_org         = "${var.github_organization}"
  team_count         = 1
  gitignore_template = "Python"

  teams = "${list(
    map("team", var.gh_team_id_admins, "perms", "admin"),
  )}"

  # Master branch protection
  enable_branch_protection = true
  enforce_admins           = false
  strict_status_checks     = true
  contexts                 = []

  # CircleCI
  update_circleci = false
  circleci_token  = "${var.circleci_token}"
  github_token    = "${var.github_token}"
}
