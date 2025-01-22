provider "aws" {
  region     = "ap-south-1"
  access_key = ""
  secret_key = ""
}
resource "aws_instance " "web1" {
  ami           = "ami-00bb6a80f01f03502"
  instance_type = "t2.micro"
}

resource "aws_instance " "web2" {
  ami           = "ami-00bb6a80f01f03502"
  instance_type = "t2.micro"

