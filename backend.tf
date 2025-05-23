terraform {
    backend "s3" {
    bucket         = "remotestate-jreavesbucket-dev"
    key            = "global/s3/terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "terraform-locks"         # <- This enables locking
    encrypt        = true
  }
}