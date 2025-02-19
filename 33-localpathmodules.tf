filepath : /modules/ec2/servers.tf

resource "aws_instance" "web" {
  ami           = "ami-00bb6a80f01f03502"
  instance_type = "t2.micro"
  tags = {
    Name = "automationserver"
  }
}

==============================================
teams/team1/deploy.tf

provider "aws" {
  region     = "ap-south-1"
  access_key = "AKIA3ISBV2ZXIZHR3CBA"
  secret_key = "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"
}


module "ec2" {
    source = "../../modules/ec2"
}
