terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
    }
    archive = {
      source = "hashicorp/archive"
    }
    null = {
      source = "hashicorp/null"
    }
  }

  required_version = ">= 1.3.7"
}

provider "aws" {
  region  = "ap-southeast-2"
  profile = "go-lambda-terraform"

  default_tags {
    tags = {
      app = "tutorial-terraform"
    }
  }
}