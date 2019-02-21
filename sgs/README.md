## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|:----:|:-----:|:-----:|
| default\_tags |  | map | n/a | yes |
| r53\_health\_check\_ranges |  | list | n/a | yes |
| vpc\_id |  | string | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| alb\_sg\_id |  |
| cs\_api\_sg\_id |  |
| db\_clients\_sg\_id |  |
| r53\_hcs\_sg\_id |  |
| tux\_sg\_id |  |

