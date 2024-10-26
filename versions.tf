terraform {
  required_version = "1.9.8"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 5.32.0"
    }
  }
}

provider "aws" {
  region = "eu-west-1"
}

# remote backend
terraform {
  backend "s3" {
    bucket         = "my-terraform-backend-bucket-mamadou"
    key            = "lambda-function/terraform.tfstate"
    region         = "eu-west-1"
    encrypt        = true
  }
}