resource "aws_subnet" "private-1" {
  vpc_id     = aws_vpc.saicharan_vpc.id
  cidr_block = var.private_subnet_1
    availability_zone = data.aws_availability_zones.availability.names[0]
  tags = {
    Name = "Private-1"
  }
}

resource "aws_subnet" "private-2" {
  vpc_id     = aws_vpc.saicharan_vpc.id
  cidr_block = var.private_subnet_2
    availability_zone = data.aws_availability_zones.availability.names[1]
  tags = {
    Name = "Private-2"
  }
}

resource "aws_subnet" "private-3" {
  vpc_id     = aws_vpc.saicharan_vpc.id
  cidr_block = var.private_subnet_3
    availability_zone = data.aws_availability_zones.availability.names[2]
  tags = {
    Name = "Private-3"
  }
}