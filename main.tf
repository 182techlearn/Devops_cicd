provider "aws" {
  region = "ap-south-1"
}

terraform {
  backend "s3" {
    bucket         = "devops-terraform-techlearn182"
    key            = "devops/terraform.tfstate"
    region         = "ap-south-1"
    dynamodb_table = "terraform-locks"
  }
}
