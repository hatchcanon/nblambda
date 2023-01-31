module "apigw" {
  source  = "../modules/apigw"
  apiname = "example api"
}

module "lambda" {
  source             = "../modules/lambda"
  subnet_ids         = module.vpc.private_subnets
  security_group_ids = ["sg-036fd6113e09825ce"]
}
module "vpc" {
  source          = "../modules/vpc"
  azs             = ["us-east-1a"]
  private_subnets = ["10.0.1.0/24"]
  public_subnets  = ["10.0.2.0/24"]
  vpc_cidr        = "10.0.0.0/22"
}