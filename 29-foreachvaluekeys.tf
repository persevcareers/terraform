provider "aws" {
  region     = "ap-south-1"
  access_key = "AKIAYLZZKG25CI677AWM"
  secret_key = "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"
}
variable "maps" {
  default = {
    key1 = "value1"
    key2 = "value2"
  }
}

resource "aws_instance" "web" {
  for_each = var.maps
  ami = each.value
  instance_type = "t2.micro"
   tags = {
    Name = each.key
   }
}
