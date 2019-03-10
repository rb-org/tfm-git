module "tfm_aws_eks" {
  source = "github.com/rb-org/terraform-aws-rb-github?ref=v0.0.6"

  repo_name        = "${var.name_prefix}-aws-eks-dashboard"
  repo_description = "${var.desc_prefix} - AWS EKS Dashboard"
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
  contexts                 = ["ci/circleci: feat2dev_plan"]

  # CircleCI
  update_circleci = true
  circleci_token  = "${var.circleci_token}"
  github_token    = "${var.github_token}"
}
