provider "aws" {
  region     = "ap-south-1"
  access_key = "AKIAYLZZKG25CI677AWM"
  secret_key = "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"
}
resource "aws_instance" "web" {
  ami           = "ami-00bb6a80f01f03502"
  instance_type = "t2.micro"

  provisioner "local-exec" {
    command = "echo 'Welcome to automation'"
  }  
}
