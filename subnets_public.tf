resource "aws_subnet" "public-1" {
  vpc_id     = aws_vpc.saicharan_vpc.id
  cidr_block = var.public_subnet_1
    availability_zone = data.aws_availability_zones.availability.names[0]
  tags = {
    Name = "Public-1"
  }
}


resource "aws_subnet" "public-2" {
  vpc_id     = aws_vpc.saicharan_vpc.id
  cidr_block = var.public_subnet_2
    availability_zone = data.aws_availability_zones.availability.names[1]
  tags = {
    Name = "Public-2"
  }
}
resource "aws_subnet" "public-3" {
  vpc_id     = aws_vpc.saicharan_vpc.id
  cidr_block = var.public_subnet_3
    availability_zone = data.aws_availability_zones.availability.names[2]
  tags = {
    Name = "Public-3"
  }
}


