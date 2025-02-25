# Creation of security group manually.

# Allowing a port 9090 in rules.

# The above resource is created manually and is not managed by Terraform.

# Let’s use terraform import feature to direct terraform to take over the control on that resource.


==================================================================

provider "aws" {
  region     = "ap-south-1"
  access_key = ""
  secret_key = ""
}

import {
  to = aws_security_group.sg
  id = ""
}
