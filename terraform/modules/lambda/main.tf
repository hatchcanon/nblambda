module "nodelambda" {
  source  = "terraform-module/lambda/aws"
  version = "~> 3.0"

  description   = "this is example code"
  filename      = data.archive_file.lambda.output_path
  function_name = "nodelambda"
  handler       = "index.handler"
  memory_size   = 128
  publish       = true
  runtime       = "nodejs12.x"
  vpc_config = {
    subnet_ids         = var.vpc_private_subnets
    security_group_ids = var.security_group_ids
  }

  allowed_triggers = {
    AllowExecutionFromAPIGateway = {
      service    = "apigateway"
      source_arn = module.apigw.apigatewayv2_api_execution_arn
    }
  }
}