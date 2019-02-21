## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|:----:|:-----:|:-----:|
| default\_tags |  | map | n/a | yes |
| vpc\_cidr |  | string | n/a | yes |
| az\_count |  | string | `"2"` | no |
| enable\_vpc\_flow\_logs |  | string | `"false"` | no |
| flow\_log\_retention\_in\_days |  | string | `"3"` | no |

## Outputs

| Name | Description |
|------|-------------|
| database\_subnet\_group |  |
| database\_subnets\_ids |  |
| nat\_public\_ips |  |
| private\_subnets\_cidr\_blocks |  |
| private\_subnets\_ids |  |
| public\_subnets\_cidr\_blocks |  |
| public\_subnets\_ids |  |
| vpc\_id |  |

