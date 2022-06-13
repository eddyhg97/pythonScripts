resource "aws_s3_bucket" "this_bucket" {
  bucket = "demobucketedutestbitsade123"
}

resource "aws_s3_object" "object" {
  bucket = aws_s3_bucket.this_bucket.id
  key    = "folder1/out"
}
