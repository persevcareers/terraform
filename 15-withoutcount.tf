provider "aws" {
  region     = "ap-south-1"
  access_key = "AKIA3ISBV2ZXIZHR3CBA"
  secret_key = "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"
}

resource "aws_instance" "web1" {
  ami           = "ami-00bb6a80f01f03502"
  instance_type = ""t2.micro
  }

resource "aws_instance" "web2" {
  ami           = "ami-00bb6a80f01f03502"
  instance_type = ""t2.micro
  }


resource "aws_instance" "web3" {
  ami           = "ami-00bb6a80f01f03502"
  instance_type = ""t2.micro
  }

resource "aws_instance" "web4" {
  ami           = "ami-00bb6a80f01f03502"
  instance_type = ""t2.micro
  }

resource "aws_instance" "web5" {
  ami           = "ami-00bb6a80f01f03502"
  instance_type = ""t2.micro
  }




