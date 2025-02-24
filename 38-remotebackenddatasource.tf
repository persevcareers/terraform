To reference an Elastic IP (EIP) deployed by teamip and used by teamsecurity through a remote state file as a data source, you'll need to configure a 
remote state backend for teamsecurity to read the EIP from the state of teamip.

Steps:
1.Create location for remote backend on s3
2. teamip will deploy the EIP.
3. teamsecurity will use the terraform_remote_state data source to fetch the EIP from teamip's state file 
#teamip/ip.tf
provider "aws" {
  region     = "ap-south-1"
  access_key = ""
  secret_key = ""
}

resource "aws_eip" "team_ip_eip" {
  domain = "vpc"
}

output "eip" {
  value = aws_eip.team_ip_eip.public_ip
}

======================================================================================================================
#teamip/backend.tf
terraform {
  backend "s3" {
    bucket = "ssperseverance"
    key    = "teamip/terraform.tfstate"
    region = "ap-south-1"
  }
}

======================================================================================================================
#teamsecurity/rules.tf
# Configure the remote state data source
data "terraform_remote_state" "teamip" {
  backend = "s3"  # Use the appropriate backend type like S3, etc.
  config = {
    bucket = "ssperseverance"
    key    = "teamip/terraform.tfstate"
    region = "ap-south-1"
  }
}
# Fetching the EIP from teamip's remote state
resource "aws_security_group" "team_security_group" {
  name        = "team-security-sg"
  description = "Security group used by TeamSecurity"

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["${data.terraform_remote_state.teamip.outputs.eip}/32"]
  }

}
