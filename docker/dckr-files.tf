module "dckr_tfm" {
  source = "github.com/rb-org/terraform-aws-rb-github?ref=v0.0.4"

  repo_name        = "${var.name_prefix}-files"
  repo_description = "${var.desc_prefix}"
  license_template = "mit"
  private_repo     = false
  github_org       = "${var.github_organization}"
  team_count       = 1

  teams = "${list(
    map("team", var.gh_team_id_admins, "perms", "admin"),
  )}"

  # Master branch protection
  enable_branch_protection = true
  enforce_admins           = false
  strict_status_checks     = true
  contexts                 = ["ci/circleci: feat_plan"]

  # CircleCI
  update_circleci = true
  circleci_token  = "${var.circleci_token}"
  github_token    = "${var.github_token}"
}
