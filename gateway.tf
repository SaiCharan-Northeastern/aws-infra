resource "aws_internet_gateway" "internet_gateway" {
  vpc_id = aws_vpc.saicharan_vpc.id
  tags = {
    "Name" = "Created using Terraform"
  }
}