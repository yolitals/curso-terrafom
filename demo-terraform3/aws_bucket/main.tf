provider "aws" {
  region = "us-east-2"
}

resource "aws_s3_bucket" "terraform_backend" {
  bucket = var.bucket_name
  acl    = var.bucket_acl
  tags   = var.bucket_tags
}