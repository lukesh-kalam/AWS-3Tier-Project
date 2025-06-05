provider "aws" {
  region = var.region
    access_key = var.aws_access_key
    secret_key = var.aws_secret_key
}


terraform {
  backend "s3" {
    bucket         = "lukesh-terraform-s3-bucket"
    key            = "project1/terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "lukesh-terraform-dynamodb-lock"      
    encrypt        = true
  }
}