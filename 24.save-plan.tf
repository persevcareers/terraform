provider "aws" {
  region     = "ap-south-1"
  access_key = ""
  secret_key = ""
}
 
resource "local_file" "automate" {
filename = "1.txt"
content = "Automation Code"
}
