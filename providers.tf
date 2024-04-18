terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.36.0"
    }
  }

   backend "s3" {
    bucket  = "natanael-state-bucket-tf"
    profile = "natanael-profile"
    region  = "us-west-1"
    key     = "terraform.tfstate"
    encrypt = true
  }
}

provider "aws" {
  region  = "us-west-1"
  profile = "natanael-profile"
}

resource "aws_s3_bucket" "terraform_state" {
  bucket = var.state_bucket

  lifecycle {
    prevent_destroy = true
  }
}