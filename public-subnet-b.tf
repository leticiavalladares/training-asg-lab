resource "aws_subnet" "pub_subnet_b" {
  vpc_id                  = data.aws_vpc.vpc.id
  cidr_block              = var.aws_pub_subnet_cidr_block_b
  availability_zone       = "eu-central-1b"
  map_public_ip_on_launch = true

  tags = {
    Name = "pub-subnet-b"
  }
}

resource "aws_route_table" "rt_pub_subnet_b" {
  vpc_id = data.aws_vpc.vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = data.aws_internet_gateway.ig.id
  }

  tags = {
    Name = "rt-pub-subnet-b"
  }

  depends_on = [
    aws_subnet.pub_subnet_b
  ]
}

resource "aws_route_table_association" "pub_assoc-b" {
  subnet_id     = aws_subnet.pub_subnet_b.id
  route_table_id = aws_route_table.rt_pub_subnet_b.id

depends_on = [
    aws_subnet.pub_subnet_b
  ]
}