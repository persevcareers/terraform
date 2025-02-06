#Deploy ec2 via terraform
provider "aws" {
  region     = "ap-south-1"
  access_key = ""
  secret_key = ""
}
resource "aws_instance" "web" {
  ami           = "ami-00bb6a80f01f03502"
  instance_type = "t2.micro"
  tags = {
    Name = "automationserver"
  }
}
#Recreate it using terraform
terraform apply -replace "aws_instance.web"
