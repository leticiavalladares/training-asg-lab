variable "ami_name" {
  description = "The name of the ami"
  type        = string
}

variable "aws_ami_owner" {
  description = "The owner id of the ami"
  type        = string
}

variable "keypair" {
  description = "The owner id of the ami"
  type        = string
}

variable "aws_region" {
  description = "Region to deploy"
  type        = string
}

variable "priv_subnet_a" {
  description = "Name of private subnet a"
  type        = string
}

variable "priv_subnet_b" {
  description = "Name of private subnet b"
  type        = string
}

variable "pub_subnet" {
  description = "Name of public subnet a"
  type        = string
}

variable "vpc_name" {
  description = "Name of vpc"
  type        = string
}

variable "instance_type" {
  description = "Type of aws instance"
  type        = string
}

variable "aws_pub_subnet_cidr_block_b" {
    description = "IP range for the public subnet b"
    type        = string
}

variable "ig" {
    description = "Name of internet gateway"
    type        = string
}