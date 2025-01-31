# Execute variable block first
# variable block
provider "aws" {
  region     = "ap-south-1"
  access_key = "AKIA3ISBV2ZXIZHR3CBA"
  secret_key = "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"
}
variable "tag" {
default = {
  app = "Automation"
}
}
resource "aws_security_group" "sg01" {
name = "applicationrules"
tags = var.tag
}
resource "aws_security_group" "sg02" {
name = "userrules"
tags = var.tag
}
=============================================================
# Locals block
provider "aws" {
  region     = "ap-south-1"
  access_key = "AKIA3ISBV2ZXIZHR3CBA"
  secret_key = "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"
}
locals {
default = {
  app = "Automationnew"
}
}
resource "aws_security_group" "sg01" {
name = "applicationrules"
tags = local.default
}
resource "aws_security_group" "sg02" {
name = "userrules"
tags = local.default
}
=============================================================
FINAL EXECUTION
provider "aws" {
  region     = "ap-south-1"
  access_key = "AKIA3ISBV2ZXIZHR3CBA"
  secret_key = "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"
}

locals {
default = {
  app = "Automationnew"
  deployeddate = "${formatdate("DDMMYYYY",timestamp())}"
  }
}
resource "aws_security_group" "sg01" {
name = "applicationrules"
tags = local.default
}
resource "aws_security_group" "sg02" {
name = "userrules"
tags = local.default
}
