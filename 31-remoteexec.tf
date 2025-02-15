#note chmod 400 pemfile is required in cases of permissions issues on local server
provider "aws" {
  region     = "ap-south-1"
  access_key = "AKIAYLZZKG25CI677AWM"
  secret_key = "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"
}
resource "aws_instance" "web" {
  ami           = "ami-00bb6a80f01f03502"
  instance_type = "t2.micro"
 connection {
    type     = "ssh"
    user     = "ubuntu"
    private_key = file("./terraform-deploy.pem")
    host     = self.public_ip
  }
  provisioner "remote-exec" {
    inline = [ 
      "sudo touch /tmp/ssp.txt" 
      ]
  }
}
