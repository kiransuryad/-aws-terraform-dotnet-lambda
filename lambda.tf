locals {
  function_name = "dotnet6_lambda_example"
}

resource "aws_lambda_function" "dotnet6_lambda" {
  function_name = local.function_name
  handler       = var.lambda_handler
  runtime       = var.lambda_runtime
  role          = aws_iam_role.lambda_role.arn

  filename = "${path.module}/lambda_function/dotnet_lambda_function.zip"

  environment {
    variables = {
      EXAMPLE_ENV_VAR = "example_value"
    }
  }

  tags = {
    Terraform = "true"
    Project   = "dotnet6_lambda_example"
  }
}
