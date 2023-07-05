terraform {
  backend "s3" {
    bucket = "mubucketstate"
    dynamodb_table = "dynamo"
    key = "terraform.tfstate"
    region = "us-east-1"
    encrypt = true
    
  }
}

provider "aws" {
  region = "us-east-1"

}

