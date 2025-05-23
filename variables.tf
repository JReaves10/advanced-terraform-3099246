variable "region" {
  type    = string
  default = "us-east-1"
}

variable "vpc_cidr" {
  type    = string
  default = "10.0.0.0/16"
}

variable "subnet_name" {
  type    = string
  default = "public-subnet-1"
}

variable "subnet_cidr" {
  type    = string
  default = "10.0.1.0/24"
}

variable "ami_owner" {
  type    = string
  default = "amazon"
}

variable "ami_name" {
  type    = string
  default = "amzn2-ami-hvm-*-x86_64-gp2"
}

variable "instance_type" {
  type    = string
  default = "t2.micro"
}

variable "allowed_ports" {
  type    = list(number)
  default = [22, 80, 443]
}

variable "sg_cidr" {
  type    = string
  default = "0.0.0.0/0"
}

variable "target_environment" {
  description = "The target environment to deploy into"
  type        = string
  default     = "DEV"
}

variable "environment_list" {
  type    = list(string)
  default = ["DEV", "QA", "STAGE", "PROD"]
}

variable "environment_map" {
  type = map(string)
  default = {
    "DEV"   = "dev",
    "QA"    = "qa",
    "STAGE" = "stage",
    "PROD"  = "prod"
  }
}

variable "environment_instance_settings" {
  type = map(object({
    instance_type = string
    tags          = map(string)
  }))
  default = {
    "DEV" = {
      instance_type = "t2.micro",
      tags = {
        Name        = "dev-instance",
        Environment = "DEV"
      }
    }
    "QA" = {
      instance_type = "t2.micro",
      tags = {
        Name        = "qa-instance",
        Environment = "QA"
      }
    }
    "STAGE" = {
      instance_type = "t2.micro",
      tags = {
        Name        = "stage-instance",
        Environment = "STAGE"
      }
    }
    "PROD" = {
      instance_type = "t2.micro",
      tags = {
        Name        = "prod-instance",
        Environment = "PROD"
      }
    }
  }
}
