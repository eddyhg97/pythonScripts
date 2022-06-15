resource "aws_s3_bucket" "this_bucket" {
  bucket = "gitactionseduadevintatest"
}

resource "aws_s3_object" "object" {
  bucket = aws_s3_bucket.this_bucket.id
  key    = "demo/directory/folder1/folder2/"
}
