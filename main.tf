resource "aws_s3_bucket" "bucket_1" {
bucket = var.bucket
tags={
    names= "first"
}  
}