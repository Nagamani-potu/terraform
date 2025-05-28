terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "6.0.0-beta2" #aws provider version not terraform
    }
  }


  backend "s3" {
    bucket = "remote-state-devopstraining"
    key    = "foreach"
    region = "us-east-1"
    dynamodb_table = "devops-locking"
  }

}
# Configure the AWS Provider
provider "aws" {
  region = "us-east-1"
}