# The below deploys one VM with default propoerties
provider "aws" {
  region     = "us-east-1"
  access_key = "AKIAYLZZKG25CI677AWM"
  secret_key = "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"
}
module "ec2_instance" {
  source = "terraform-aws-modules/ec2-instance/aws"
}

===============================================================
