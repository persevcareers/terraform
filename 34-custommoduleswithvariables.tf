/modules/ec2/servers.tf


resource "aws_instance" "web" {
  ami           = var.ami
  instance_type = var.type
  }

variable "ami" { }

variable "type" { }

====================================================
teams/team1/main.tf

provider "aws" {
  region     = "ap-south-1"
  access_key = "AKIA3ISBV2ZXIZHR3CBA"
  secret_key = "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"
}


module "ec2" {
    source = "../../modules/ec2"
    ami           = "ami-00bb6a80f01f03502"
    instance_type = "t2.micro"
}
