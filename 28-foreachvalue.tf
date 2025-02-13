provider "aws" {
  region     = "ap-south-1"
  access_key = "AKIAYLZZKG25CI677AWM"
  secret_key = "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"
}
variable "user_names" {
  type        = set(string)
  default     = ["dev1", "dev2", "dev3"]
}

resource "aws_iam_user" "developers" {
  for_each = var.user_names
  name = each.value
}
