provider "aws" {
  region     = "ap-south-1"
  access_key = ""
  secret_key = ""
}

resource "aws_instance" "web" {
    ami        = "ami-00bb6a80f01f03502"
    instance_type = "t2.micro"
}
terraform {
  backend "s3" {
    bucket = "sspinfrastate"
    key    = "perseverance/terraform.tfstate"
    region = "ap-south-1"
  }
}
===================================================================================
aws configure
aws ls s3 bucketname
