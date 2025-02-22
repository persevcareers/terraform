#deploy ec2 in one workspace and check  the same in another , it will not be there

provider "aws" {
  region     = "ap-south-1"
  access_key = ""
  secret_key = "
}
resource "aws_instance" "web" {
    ami        = "ami-00bb6a80f01f03502"
    instance_type = "t2.micro"
}
========================================================================================================

#Workspaces – Manage multiple deployments to different environments


provider "aws" {
  region     = "ap-south-1"
  access_key = ""
  secret_key = "
}

locals {
  instance_type = {
    default = "t2.micro"
    dev = "t2.medium"
  }
}
resource "aws_instance" "web" {
    ami        = "ami-00bb6a80f01f03502"
    instance_type = local.instance_type[terraform.workspace]
}
