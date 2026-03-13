terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "6.34.0"
    }
  }


  backend "s3" {
    bucket = "dev-daws-86s"
    key    = "dev-local-demo"
    region = "us-east-1"
  }
}

provider "aws" {
  # Configuration options
}