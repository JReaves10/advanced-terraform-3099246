terraform {
  required_version = "~> 1.11.4, < 2.0.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.96.0"
    }
  }

  # backend "s3" {
  #   bucket         = "remotestate-jreavesbucket-dev"
  #   key            = "global/s3/terraform.tfstate"
  #   region         = "us-east-1"
  #   dynamodb_table = "terraform-locks"         # <- This enables locking
  #   encrypt        = true
  # }
}