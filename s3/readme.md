
## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|:----:|:-----:|:-----:|
| default\_tags | Map of tags to add to all resources | map | n/a | yes |
| region | The AWS region to launch | string | n/a | yes |
| expiration\_days | Days before purging data. 0 is disabled. | string | `"10"` | no |
| glacier\_transition\_days | Days before moving data to Glacier. Must be at least 180. 0 is disabled. | string | `"0"` | no |
| infrequent\_transition\_days | Days before moving data to Standard-IA. Must be at least 30. 0 is disabled. | string | `"0"` | no |

## Outputs

| Name | Description |
|------|-------------|
| s3\_lb\_logs\_arn | The ARN of the bucket. Will be of format arn:aws:s3:::bucketname |
| s3\_lb\_logs\_id | The name of the bucket |
| ssm\_bucket\_arn | The ARN of the bucket. Will be of format arn:aws:s3:::bucketname |
| ssm\_bucket\_id | The name of the bucket |
| ssm\_docs\_bucket\_arn | The ARN of the ssm docs bucket. Will be of format arn:aws:s3:::bucketname |
| ssm\_docs\_bucket\_id | The name of the ssm docs bucket |

