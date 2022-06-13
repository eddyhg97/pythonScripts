resource "aws_s3_bucket" "this_bucket" {
  bucket = "demobucketedutestbitsade12345"
}

resource "aws_s3_object" "object" {
  bucket = aws_s3_bucket.this_bucket.id
  key    = "demo/directory/"
}
