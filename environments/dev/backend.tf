terraform {
  backend "s3" {
    bucket         = "tf-state-pp-001"
    key            = "dev/terraform.tfstate"
    region         = "eu-central-1"
    dynamodb_table = "terraform_locks_pp_001"
    encrypt        = true
  }
}
