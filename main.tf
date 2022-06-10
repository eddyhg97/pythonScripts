provider "aws"{
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

resource "aws_s3_bucket" "this" {
  bucket                               = "testingEduBitsAdev1231212122323"
  force_destroy                        = "true"
  region                               = "eu-west-1"

}