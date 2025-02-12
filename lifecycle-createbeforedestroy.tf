#Execute just by changing AMI and execute plan firstly
provider "aws" {
  region     = "ap-south-1"
  access_key = "AKIAYLZZKG25CI677AWM"
  secret_key = "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"
}
resource "aws_instance" "automationserver" {
  ami           = "ami-00bb6a80f01f03502"
  instance_type = "t2.micro"
}

=========================================================

provider "aws" {
  region     = "ap-south-1"
  access_key = "AKIAYLZZKG25CI677AWM"
  secret_key = "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"
}
resource "aws_instance" "automationserver" {
  ami           = "ami-00bb6a80f01f03502"
  instance_type = "t2.micro"
}
