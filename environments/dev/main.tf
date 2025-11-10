module "vpc" {
  source = "../../modules/vpc"

  name           = "dev"
  vpc_cidr       = "10.0.0.0/16"
  public_subnets = {
    "a" = "10.0.1.0/24"
    "b" = "10.0.2.0/24"
  }
}

module "iam_role" {
  source = "../../modules/iam-role"

  name             = "dev-ec2-role"
  trusted_service  = "ec2.amazonaws.com"

  policy_statements = [
    {
      Effect = "Allow"
      Action = [
        "s3:GetObject",
        "s3:ListBucket"
      ]
      Resource = "*"
    }
  ]
}

module "website_bucket" {
  source          = "../../modules/s3-website"
  bucket_name     = "www.tubes.berlin"
  index_document  = "index.html"
  error_document  = "error.html"
}

