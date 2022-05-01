resource "aws_vpc" "awsvpc" {
    cidr_block = var.cidr

    tags = {
        Name = var.vpc_name
    }
}

resource "aws_subnet" "vpc1_pub_subnet" {
  vpc_id                  = aws_vpc.awsvpc.id
  count                   = length(var.az)
  availability_zone       = var.az[count.index]
  cidr_block              = var.pub_sub[count.index]
  map_public_ip_on_launch = true

  tags = {
    "Name" = "PrivateSubnet-${count.index}"
  }
}