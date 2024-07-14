terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region = "eu-central-1"
}

resource "aws_s3_bucket" "example" {
  bucket = "my-tf-test-bucketmg1612"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}
