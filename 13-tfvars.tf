resource "aws_instance" "example" {
  ami           = "ami-0c55b159cbfafe1f0"
  instance_type = var.instance_type  # Use the variable for instance type
}


variables.tf
====================================
variable "instance_type" {
}

devenv.tfvars
====================================
instance_type = "t2.micro"

prodenv.tfvars
====================================
instance_type = "t2.medium"



