# Terraform for creating github repos and some CircleCI config

## Build Status

[![CircleCI](https://circleci.com/gh/rb-org/tfm-git/tree/master.svg?style=svg&circle-token=a5f4fce3f54534bc5f6afee116accb0c246bb220)](https://circleci.com/gh/rb-org/tfm-git/tree/master)
## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|:----:|:-----:|:-----:|
| circleci\_token |  | string | n/a | yes |
| github\_token |  | string | n/a | yes |
| github\_organization |  | string | `"rb-org"` | no |
| name\_prefix |  | string | `""` | no |
