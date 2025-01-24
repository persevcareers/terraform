resource "aws_vpc" "main" {
  cidr_block = "10.0.0.0/16"
}
# Create a subnet inside the VPC
resource "aws_subnet" "main" {
  vpc_id     = aws_vpc.main.id  # This depends on the VPC ID
  cidr_block = "10.0.1.0/24"
}
# Create an EC2 instance in the subnet
resource "aws_instance" "example" {
  ami           = "ami-0c55b159cbfafe1f0"  
  instance_type = "t2.micro"
  subnet_id     = aws_subnet.main.id  # This depends on the subnet ID
}
