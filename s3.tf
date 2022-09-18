provider "aws" {
  region  = "us-east-2"
}

resource "aws_s3_bucket" "b" {
  bucket = "my-tf-test-bucket-igor"

  tags = {
    Name        = "My bucket"
  }
}

resource "aws_s3_bucket_acl" "example" {
  bucket = aws_s3_bucket.b.id
  acl    = "private"
}
