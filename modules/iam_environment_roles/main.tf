resource "aws_iam_role" "iam-role" {
  name = "terraform-${var.env}-role"

  assume_role_policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Action = "sts:AssumeRole"
        Effect = "Allow"
        Sid    = ""
        Principal = {
          AWS = "arn:aws:iam::${var.aws_account_id}:root"
        }
      }
    ]
  })

  tags = {
    tag-key = "tag-${var.env}-role"
  }
}

resource "aws_iam_role_policy_attachment" "role-policy" {
  role       = aws_iam_role.iam-role.name
  policy_arn = "arn:aws:iam::aws:policy/AdministratorAccess"
}

module "dev_role" {
    source = "./modules/iam_environment_roles"
    env = "dev"
}

module "staging_role" {
    source = "./modules/iam_environment_roles"
    env = "staging"
}

module "prod_role" {
    source = "./modules/iam_environment_roles"
    env = "prod"
}

module "test_role" {
    source = "./modules/iam_environment_roles"
    env = "test"
}