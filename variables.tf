variable "region" {
  type = string
  default = "us-east-1"
}

variable "vpc_cidr" {
  type = string
  default = "10.0.0.0/16"
}

variable "subnet_name" {
  type = string
  default = "public-subnet-1"
}

variable "subnet_cidr" {
  type = string
  default = "10.0.1.0/24"
}

variable "ami_owner" {
  type = string
  default = "amazon"
}

variable "ami_name" {
  type = string
  default = "amzn2-ami-hvm-*-x86_64-gp2"
}

variable "instance_type" {
  type = string
  default = "t2.micro"
}

variable "allowed_ports" {
  type = list(number)
  default = [22, 80, 443]
}

variable "sg_cidr" {
  type = string
  default = "0.0.0.0/0"
}