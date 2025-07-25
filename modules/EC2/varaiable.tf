variable "region" {
  default = "ap-south-1"
}

variable "environment" {
  default = "dev"
}

variable "vpc_name" {}
variable "vpc_cidr" {}
variable "azs" {
  type = list(string)
}
variable "public_subnets" {
  type = list(string)
}
variable "private_subnets" {
  type = list(string)
}

# EC2 variables
variable "ec2_name" {}
variable "ec2_ami" {}
variable "ec2_instance_type" {
  default = "t3.micro"
}
variable "ec2_key_name" {}


