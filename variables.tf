variable "aws_region" {
  description = "The AWS region to deploy resources in"
  default     = "us-west-2"
}

variable "lambda_handler" {
  description = "The Lambda function handler"
  default     = "AWSLambdaTest002::AWSLambdaTest002.Function::FunctionHandler"
}

variable "lambda_runtime" {
  description = "The runtime for the Lambda function"
  default     = "dotnet6"
}
