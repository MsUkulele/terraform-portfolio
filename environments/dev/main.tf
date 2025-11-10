module "vpc" {
  source = "../../modules/vpc"

  name           = "dev"
  vpc_cidr       = "10.0.0.0/16"
  public_subnets = {
    "a" = "10.0.1.0/24"
    "b" = "10.0.2.0/24"
  }
}
