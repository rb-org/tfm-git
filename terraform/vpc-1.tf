module "tfm_vpc_1" {
  source = "github.com/ruebroad/terraform-aws-rb-github?ref=v0.0.3"

  repo_name        = "${var.name_prefix}-aws-vpc-1"
  repo_description = "${var.desc_prefix} - VPC - 1"
  license_template = "mit"
  private_repo     = false
  github_org       = "${var.github_organization}"
  team_count       = 0

  teams = "${list(
    
  )}"

  # Master branch protection
  enable_branch_protection = true
  enforce_admins           = false
  strict_status_checks     = true
  contexts                 = ["feat_plan"]

  # CircleCI
  update_circleci = true
  circleci_token  = "${var.circleci_token}"
  github_token    = "${var.github_token}"
}
