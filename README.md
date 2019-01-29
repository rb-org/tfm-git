# Terraform for creating github repos and some CircleCI config

## Build Status

[![CircleCI](https://circleci.com/gh/rb-org/tfm-git/tree/master.svg?style=svg&circle-token=ae243ef5df0c7114d817724a928e4fb1b2899c4f)](https://circleci.com/gh/rb-org/tfm-git/tree/master)

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|:----:|:-----:|:-----:|
| circleci\_token |  | string | n/a | yes |
| github\_token |  | string | n/a | yes |
| github\_organization |  | string | `"rb-org"` | no |
| name\_prefix |  | string | `""` | no |
