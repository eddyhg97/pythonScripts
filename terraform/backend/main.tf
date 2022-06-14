provider "aws" {
  region = "eu-west-1"
}

terraform {
  backend "s3"{
      bucket = "tfstateedudev"
      key = "edu/devvpc/terraform.state"
      region = "eu-west-1"
      dynamodb_table = "tflockedudev"
  }
}