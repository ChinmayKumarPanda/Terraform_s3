resource "aws_s3_bucket" "bucket_1" {
bucket = var.bucket
tags={
    names= "first"
}  
}

resource "aws_s3_bucket_versioning" "versioning" {
  bucket = aws_s3_bucket.bucket_1.id 
  versioning_configuration {
    status = "Enabled"
  }
}