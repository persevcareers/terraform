# Create a file namely iam_policy.json          
# Dont put these lines inside the json file
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Effect": "Allow",
      "Action": [
        "s3:ListBucket",
        "s3:GetObject"
      ],
      "Resource": "*"
    }
  ]
}

resource "aws_iam_policy" "file_policy" {
  name        = "FilePolicy"
  description = "An example IAM policy loaded from a file"

  policy = file("iam_policy.json")
}
