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
  description = "Private subnet"
  type        = string
}

variable "priv_subnet_b" {
    
}

variable "pub_subnet" {
  
}

variable "vpc_name" {
    
}

variable "instance_type" {

}

variable "aws_pub_subnet_cidr_block_b" {
    description = "IP range for the public subnet b"
    type        = string
}

variable "ig" {

}