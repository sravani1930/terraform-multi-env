terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.94.1"
    }
  }

  
  backend "s3" {
#     # bucket = "roboshop-devopsify-prod"
#     # key    = "multienv"
#     # region = "us-east-1"
#     # dynamodb_table = "devopsify-locking-prod"
   
  }
}

provider "aws" {
  region = "us-east-1"
}