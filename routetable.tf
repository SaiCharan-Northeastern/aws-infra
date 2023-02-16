

resource "aws_route_table" "public_1" {
  vpc_id = aws_vpc.saicharan_vpc.id

  route {
    cidr_block = var.route_table_internet_gateway_cidr
    gateway_id =  aws_internet_gateway.internet_gateway.id
  }

    tags = {
      "Name" = "Public Terraform route table "
    }

}



resource "aws_route_table" "private_1" {
  vpc_id = aws_vpc.saicharan_vpc.id
  tags = {
    "Name" = "Private Terraform route table"
  }
}



resource "aws_route_table_association" "public_1" {
  #   gateway_id     = aws_internet_gateway.ig_gateway.id

  depends_on = [
    aws_route_table.public_1,
    aws_subnet.public-1
  ]

  route_table_id = aws_route_table.public_1.id
  subnet_id      = aws_subnet.public-1.id
}

resource "aws_route_table_association" "public_2" {
  #   gateway_id     = aws_internet_gateway.ig_gateway.id

  depends_on = [
    aws_route_table.public_1,
    aws_subnet.public-2
  ]


  route_table_id = aws_route_table.public_1.id
  subnet_id      = aws_subnet.public-2.id
}

resource "aws_route_table_association" "public_3" {
  depends_on = [
    aws_route_table.public_1,
    aws_subnet.public-3
  ]

  route_table_id = aws_route_table.public_1.id
  subnet_id      = aws_subnet.public-3.id
}


# resource "aws_route_table_association" "public_3" {
#   #   gateway_id     = aws_internet_gateway.ig_gateway.id
#   route_table_id = aws_route_table.public_1.id
#   subnet_id      = aws_subnet.public_3.id
# }


resource "aws_route_table_association" "private_1" {

  depends_on = [
    aws_route_table.private_1,
    aws_subnet.private-1
  ]


  route_table_id = aws_route_table.private_1.id
  subnet_id      = aws_subnet.private-1.id
}

resource "aws_route_table_association" "private_2" {

  depends_on = [
    aws_route_table.private_1,
    aws_subnet.private-2
  ]


  route_table_id = aws_route_table.private_1.id
  subnet_id      = aws_subnet.private-2.id
}

resource "aws_route_table_association" "private_3" {
  depends_on = [
    aws_route_table.private_1,
    aws_subnet.private-3
  ]
  route_table_id = aws_route_table.private_1.id
  subnet_id      = aws_subnet.private-3.id
}


