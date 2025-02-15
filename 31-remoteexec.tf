#note chmod 400 pemfile is required in cases of permissions issues on local server
provider "aws" {
  region     = "us-east-1"
  access_key = "AKIAYLZZKG25CI677AWM"
  secret_key = "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"
}
resource "aws_instance" "web" {
  ami           = "ami-053a45fff0a704a47"
  instance_type = "t2.micro"
  vpc_security_group_ids = ["sg-01361a5e0e1c4a69d"]
  tags = {
    name = "automationserver"
  }
 connection {
    type     = "ssh"
    user     = "ec2-user"
    private_key = file("./terraform-deploy.pem")
    host     = self.public_ip
  }
  provisioner "remote-exec" {
    inline = [ 
      "sudo touch /tmp/ssp.txt" 
      ]
  }
}
