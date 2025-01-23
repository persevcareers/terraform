terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "~>4.0"
    }
  }
}
provider "aws" {
  region     = "ap-south-1"
  access_key = "AKIA3ISBV2ZXATWPGPOU"
  secret_key = "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"
}

resource "aws_instance" "automationserver" {
  ami           = "ami-00bb6a80f01f03502"
  instance_type = "t2.micro"
}
