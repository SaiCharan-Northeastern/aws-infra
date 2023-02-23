resource "aws_vpc" "saicharan_vpc" {
  cidr_block = var.vpc_cidr_block

    tags = {
      "Name" = "Created by Sai_Charan"
    }

}

