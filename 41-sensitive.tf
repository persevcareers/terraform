#Secure data using sesitive variable feature
provider "aws" {
  region     = "ap-south-1"
  access_key = ""
  secret_key = ""
}

variable "secret" {
 sensitive = true
 default = "password123"
  
}

provider "aws" {
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
=====================================================
# Data will not be secured if we deploy using localfile generally ,
provider "aws" {
  region     = "ap-south-1"
  access_key = ""
  secret_key = ""
}
resource "local_file" "automation" {
  content = "hello"
  filename = "automation.txt"
}

==================================================
# Data will not be secured if we deploy using localfile generally ,

provider "aws" {
  region     = "ap-south-1"
  access_key = ""
  secret_key = ""
}
resource "local_sensitive_file" "automation" {
  content = "hello"
  filename = "automation.txt"
}
=================================================================

#In case if we refer data from localsensitive file , and try to output the data , it will throw an error,

provider "aws" {
  region     = "ap-south-1"
  access_key = ""
  secret_key = ""
}
resource "local_sensitive_file" "automation" {
  content = "hello"
  filename = "automation.txt"
}


output "filecontent" {
  value = local_sensitive_file.automation.content
}
================================================================================

#To solve the above , we need to add sensitive = true

provider "aws" {
  region     = "ap-south-1"
  access_key = ""
  secret_key = ""
}
resource "local_sensitive_file" "automation" {
  content = "hello"
  filename = "automation.txt"
}


output "filecontent" {
  value = local_sensitive_file.automation.content
  sensitive = true
}
