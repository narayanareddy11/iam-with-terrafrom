provider "aws" {
  region     = "us-east-1"

}

resource "aws_iam_user" "example_user" {
  name = "example-user"
}

output "user_name" {
  value = aws_iam_user.example_user.name
}
