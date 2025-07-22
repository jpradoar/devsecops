provider "aws" {
  region     = var.aws_region
  access_key = var.aws_access_key
  secret_key = var.aws_secret_key
  profile    = var.aws_profile # <-- Esto sale de tu  .aws/config + .aws/credentials
}
