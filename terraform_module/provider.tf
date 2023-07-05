provider "aws" {
  region = "us-east-1"

}

terraform {
  backend "s3" {
    bucket = "mubucketstate"
    dynamodb_table = "my-DynamoDB"
    key = "terraform.tfstate"
    region = "us-east-1"
    encrypt = true
    
  }
}
