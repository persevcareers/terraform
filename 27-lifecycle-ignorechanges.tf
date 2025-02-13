resource "aws_instance" "automationserver" {
  ami           = "ami-00bb6a80f01f03502"
  instance_type = "t2.micro"
  lifecycle {
    ignore_changes = [tags]
  }
}
