module "iam_assumable_roles" {
  source  = "terraform-aws-modules/iam/aws//modules/iam-assumable-role"
  version = "~> 5.0"

  for_each = var.environment_instance_settings

  trusted_role_arns = [
    "arn:aws:iam::986559698266:root",
    "arn:aws:iam::986559698266:user/jreaves"
  ]

  create_role = true

  role_name         = "${each.key}-role"
  role_requires_mfa = true

  custom_role_policy_arns = [
    "arn:aws:iam::aws:policy/AmazonEC2FullAccess",
    "arn:aws:iam::aws:policy/AmazonS3FullAccess"
  ]
  number_of_custom_role_policy_arns = 2
}