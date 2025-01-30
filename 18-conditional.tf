provider "aws" {
  region     = "ap-south-1"
  access_key = "AKIA3ISBV2ZXIZHR3CBA"
  secret_key = "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"
}

variable "env" {
  description = "Environment where the infrastructure is being deployed"
  default     = "dev" 
}

resource "aws_instance" "web" {
  ami           = "ami-00bb6a80f01f035026"
  instance_type = var.env == "dev" ? "t2.micro" : "m5.large"
  tags = {
    Name = "automation"
  }
}
=================================================================================================
provider "aws" {
  region     = "ap-south-1"
  access_key = "AKIA3ISBV2ZXIZHR3CBA"
  secret_key = "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"
}

variable "env" {
  description = "Environment where the infrastructure is being deployed"
  default     = "preprod" 
}

resource "aws_instance" "web" {
  ami           = "ami-00bb6a80f01f035026"
  instance_type = var.env != "dev" ? "t2.micro" : "m5.large"
  tags = {
    Name = "automation"
  }
}
============================================

provider "aws" {
  region     = "ap-south-1"
  access_key = "AKIA3ISBV2ZXIZHR3CBA"
  secret_key = "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"
}

variable "env" {
  description = "Environment where the infrastructure is being deployed"
  default     = "preprod" 
}

resource "aws_instance" "web" {
  ami           = "ami-00bb6a80f01f035026"
  instance_type = var.env != "" ? "t2.micro" : "m5.large"
  tags = {
    Name = "automation"
  }
}






