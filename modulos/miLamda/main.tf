provider "aws" {
  region = var.region
}

resource "aws_iam_role" "lambda_execution_role" {
  name = var.role_name

  assume_role_policy = <<EOF
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Effect": "Allow",
      "Principal": {
        "Service": "lambda.amazonaws.com"
      },
      "Action": "sts:AssumeRole"
    }
  ]
}
EOF
}

resource "aws_lambda_function" "lambda_function" {
  function_name    = var.function_name
  runtime          = var.runtime
  handler          = var.handler
  role             = aws_iam_role.lambda_execution_role.arn
  source_code_hash = filebase64("/mnt/c/Users/eloyc/mi-repositorio-terraform")
  publish          = true

  tags = var.tags
}

