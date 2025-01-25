# Create Elastic IP
resource "aws_eip" "example" {
   domain   = "vpc"
}

# Output the Elastic IP Address
output "elastic_ip_address" {
  value = aws_eip.example.public_ip
}
