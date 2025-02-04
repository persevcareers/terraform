#Repeated block of code
resource "aws_security_group" "appsg" {
  name        = "appsg01 "
  description = "Allow TCP traffic from 0.0.0.0/0 on specific port range"
  ingress {
    from_port   = 8080     
    to_port     = 8080
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  ingress {
    from_port   = 8081       
    to_port     = 8081
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
}
========================================================================
#Dynamic block of code
variable "ingress_ports" {
 description = "List of ports to allow ingress TCP traffic."
 default     = ["8080", "8081"] 
 }

resource "aws_security_group" "appsg" {
  name        = "appsg01"
  description = "Allow TCP traffic from 0.0.0.0/0 on specific port range"
  dynamic "ingress" {
    for_each = var.ingress_ports
    content {
      from_port   = ingress.value
      to_port     = ingress.value
      protocol    = "tcp"
      cidr_blocks = ["0.0.0.0/0"]
    }
  }
}
