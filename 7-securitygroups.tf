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

resource "aws_security_group" "securitygroup01" {
  name        = "securitygroup01"
  description = "enabled for webservers"
  tags = {
    Name = "sg01"
  }
}

resource "aws_vpc_security_group_ingress_rule" "rule01" {
  security_group_id = aws_security_group.securitygroup01.id
  cidr_ipv4   = "0.0.0.0/0"
  from_port   = 80
  ip_protocol = "tcp"
  to_port     = 80
}

