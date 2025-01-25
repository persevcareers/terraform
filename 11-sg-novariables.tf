resource "aws_security_group" "securitygroup01" {
  name        = "securitygroup01"
  description = "enabled for webservers"
  tags = {
    Name = "sg01"
  }

resource "aws_vpc_security_group_ingress_rule" "rule01" {
  security_group_id = aws_security_group.securitygroup01.id
  cidr_ipv4   = "0.0.0.0/0"
  from_port   = 80
  ip_protocol = "tcp"
  to_port     = 80
}

resource "aws_vpc_security_group_ingress_rule" "rule02" {
  security_group_id = aws_security_group.securitygroup01.id
  cidr_ipv4   = "0.0.0.0/0"
  from_port   = 8080
  ip_protocol = "tcp"
  to_port     = 8080
}
