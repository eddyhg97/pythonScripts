provider "aws" {
  region = "eu-west-1"
}

terraform {
  backend "s3"{
      bucket = "tfstateedudev"
      key = "edu/testGithHubActions/terraform.state"
      region = "eu-west-1"
      dynamodb_table = "tflockedudev"
  }
}


resource "aws_s3_bucket" "this_bucket" {
  bucket = "gitactionseduadevintaprod1455"
}

resource "aws_s3_object" "object" {
  bucket = aws_s3_bucket.this_bucket.id
  key    = "demo/Adevinta-Spain"
}
