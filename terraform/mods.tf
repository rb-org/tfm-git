# Cloudwatch
module "tfm_aws_cw" {
  source = "github.com/rb-org/terraform-aws-rb-github?ref=v0.0.3"

  repo_name        = "${var.name_prefix}-aws-mod-cloudwatch"
  repo_description = "${var.desc_prefix} - Module - Cloudwatch"
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
  contexts                 = ["ci/circleci: lint_validate"]

  # CircleCI
  update_circleci = true
  circleci_token  = "${var.circleci_token}"
  github_token    = "${var.github_token}"
}

# EC2 Default
module "tfm_aws_ec2" {
  source = "github.com/rb-org/terraform-aws-rb-github?ref=v0.0.3"

  repo_name        = "${var.name_prefix}-aws-mod-ec2-default"
  repo_description = "${var.desc_prefix} - Module - EC2 Default"
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
  contexts                 = ["ci/circleci: lint_validate"]

  # CircleCI
  update_circleci = true
  circleci_token  = "${var.circleci_token}"
  github_token    = "${var.github_token}"
}

# EC2 Default
module "tfm_aws_ebs_vol" {
  source = "github.com/rb-org/terraform-aws-rb-github?ref=v0.0.3"

  repo_name        = "${var.name_prefix}-aws-mod-ebs"
  repo_description = "${var.desc_prefix} - Module - EBS Volumes"
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
  contexts                 = ["ci/circleci: lint_validate"]

  # CircleCI
  update_circleci = true
  circleci_token  = "${var.circleci_token}"
  github_token    = "${var.github_token}"
}