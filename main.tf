provider "aws" {
  region = "ap-south-1"
}

terraform {
  backend "s3" {
    bucket         = "devops-terraform-state-bucket"
    key            = "ec2/terraform.tfstate"
    region         = "ap-south-1"
    dynamodb_table = "terraform-locks"
  }
}
