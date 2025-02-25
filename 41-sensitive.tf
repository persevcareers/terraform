provider "aws" {
  alias  = "ap_south"
  region     = "ap-south-1"
  access_key = ""
  secret_key = ""
}

variable "secret" {
 # sensitive = true
 default = "password123"
  
}

resource "local_file" "automation" {
  content = var.secret
  filename = "automation.txt"
}
