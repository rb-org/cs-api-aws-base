# Terraform - CS API - AWS Base

## Build Status

| Branch | Status |
|:---:|:---:|
| master | [![CircleCI](https://circleci.com/gh/rb-org/cs-api-aws-base/tree/master.svg?style=svg&circle-token=ad1380da09b562ade7fe1f8f305764cdfff367c3)](https://circleci.com/gh/rb-org/cs-api-aws-base/tree/master)  |
| test |   |
| dev | [![CircleCI](https://circleci.com/gh/rb-org/cs-api-aws-base/tree/dev.svg?style=svg&circle-token=ad1380da09b562ade7fe1f8f305764cdfff367c3)](https://circleci.com/gh/rb-org/cs-api-aws-base/tree/dev)  |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|:----:|:-----:|:-----:|
| vpc\_cidr |  | string | n/a | yes |
| account\_id | AWS Account ID | string | `""` | no |
| default\_tags | Map of default tags applied to all resources | map | `<map>` | no |
| enable\_vpc\_flow\_logs | FLow logs | map | `<map>` | no |
| flow\_log\_retention\_in\_days |  | map | `<map>` | no |
| r53\_dns\_domain\_pub |  | string | `"xyzexcp.nl"` | no |
| region | AWS Region | string | `"eu-west-1"` | no |

## Outputs

| Name | Description |
|------|-------------|
| alb\_sg\_id |  |
| cs\_api\_sg\_id |  |
| database\_subnet\_group |  |
| database\_subnets\_ids |  |
| db\_clients\_sg\_id |  |
| nat\_public\_ips |  |
| private\_subnets\_cidr\_blocks |  |
| private\_subnets\_ids |  |
| public\_subnets\_cidr\_blocks |  |
| public\_subnets\_ids |  |
| r53\_hcs\_sg\_id | Security Groups |
| s3\_lb\_logs\_id | The name of the bucket |
| ssm\_docs\_bucket\_id | The name of the ssm docs bucket |
| ssm\_patch\_bucket\_id | The name of the bucket |
| tux\_sg\_id |  |
| vpc\_id |  |
| wildcard\_cert\_arn | ACM Certs |