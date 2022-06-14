
provider "aws" {
  region = "eu-west-1"
}

terraform {
  backend "s3"{
      bucket = "tfstateedudev"
      key = "edu/devvpc/prod/terraform.state"
      region = "eu-west-1"
      dynamodb_table = "tflockedudev"
  }
}

resource "aws_s3_bucket" "this_bucket" {
  bucket = "GitActionsEduAdevintaProd"
}

resource "aws_s3_object" "object" {
  bucket = aws_s3_bucket.this_bucket.id
  key    = "demo/directory/folder1/folder2/"
}
