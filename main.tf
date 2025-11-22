terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }

  cloud {
    organization = "Raj-Demo-Organization"
    workspaces {
      name = "raj-tfc-demo"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}

resource "aws_s3_bucket" "demo" {
  bucket = "tfc-cli-demo-raj-bucket-145"
}
