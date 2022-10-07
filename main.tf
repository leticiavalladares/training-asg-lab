# VPC of Talent-Academy Lab account
data "aws_vpc" "vpc" {
  filter {
    name   = "tag:Name"
    values = [var.vpc_name]
  }
}

data "aws_ami" "ubuntu_image" {
  most_recent = true
  owners      = [var.aws_ami_owner]

  filter {
    name   = "name"
    values = [var.ami_name]
  }
}

# Private Subnets
data "aws_subnet" "priv_subnet_1" {
  filter {
    name   = "tag:Name"
    values = [var.priv_subnet_a]
  }
}

data "aws_subnet" "priv_subnet_2" {
  filter {
    name   = "tag:Name"
    values = [var.priv_subnet_b]
  }
}

data "aws_subnet" "pub_subnet" {
  filter {
    name   = "tag:Name"
    values = [var.pub_subnet]
  }
}

data "aws_internet_gateway" "ig" {
  filter {
    name   = "tag:Name"
    values = [var.ig]
  }
}

