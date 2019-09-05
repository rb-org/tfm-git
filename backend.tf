terraform {
  backend "s3" {
    bucket                  = "tfm-remote-state"
    region                  = "eu-west-1"
    key                     = "tfm-git.tfstate"
    encrypt                 = "true"
    shared_credentials_file = "~/.aws/credentials"
    profile                 = "rb-auto"
  }
}
