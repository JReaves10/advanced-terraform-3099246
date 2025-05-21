resource "aws_s3_bucket" "environment_buckets" {
  for_each = toset(var.environment_list)
  bucket   = "${lower(each.key)}-jreaves-environment"

  tags = {
    Name        = "environment-${each.key}"
    Environment = upper(each.key)
  }
}