resource "aws_s3_bucket" "cloudtrail_logs" {
  bucket = "${local.name_prefix}-cloudtrail-logs"
  acl    = "private"

  policy = <<POLICY
{
    "Version": "2012-10-17",
    "Statement": [
        {
            "Sid": "AWSCloudTrailAclCheck",
            "Effect": "Allow",
            "Principal": {
              "Service": "cloudtrail.amazonaws.com"
            },
            "Action": "s3:GetBucketAcl",
            "Resource": "arn:aws:s3:::${local.name_prefix}-cloudtrail-logs"
        },
        {
            "Sid": "AWSCloudTrailWrite",
            "Effect": "Allow",
            "Principal": {
              "Service": "cloudtrail.amazonaws.com"
            },
            "Action": "s3:PutObject",
            "Resource": "arn:aws:s3:::${local.name_prefix}-cloudtrail-logs/*",
            "Condition": {
                "StringEquals": {
                    "s3:x-amz-acl": "bucket-owner-full-control"
                }
            }
        }
    ]
}
POLICY

  versioning {
    enabled = true
  }

  tags = "${merge(var.default_tags, 
    map("Workspace", format("%s", terraform.workspace)),
    map("Name", format("%s-cloudtrail-logs", local.name_prefix))
    )
  }"
}
