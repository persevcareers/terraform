# /modules/ec2/main.tf
==================================================================
resource "aws_instance" "web" {
  ami           = var.ami
  instance_type = var.type
  tags = {
    Name = "web"
    }
  }

output "instance_id" {
value = aws_instance.web.id
}

variable "ami" { }
variable "type" { }

==================================================================
# /teams/team1/modules.tf
==================================================================
provider "aws" {
  region     = "ap-south-1"
  access_key = ""
  secret_key = ""
}
module "ec2" {
    source = "../../modules/ec2"
    ami        = "ami-00bb6a80f01f03502"
    type = "t2.micro"
}
resource "aws_eip" "lb" {
 
  instance = module.ec2.instance_id
}
