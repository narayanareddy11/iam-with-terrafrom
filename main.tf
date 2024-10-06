provider "aws" {
  region     = "us-east-1"
  access_key = var.aws_access_key_id
  secret_key = var.aws_secret_access_key
}

resource "aws_iam_user" "example_user" {
  name = "example-user"
}

output "user_name" {
  value = aws_iam_user.example_user.name
}
