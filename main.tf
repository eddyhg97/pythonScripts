resource "aws_s3_bucket" "this_bucket" {
  bucket = "demo_bucket_edu_test_bits_ade123"
}

resource "aws_s3_object" "object" {
  bucket = aws_s3_bucket.this_bucket.id
  key    = "demo/directory/"
}
