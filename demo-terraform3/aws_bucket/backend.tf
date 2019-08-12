terraform {
  backend "s3" {
    bucket = "terraform-backend-platzi"
    key    = "terraform/bucket/dev"
    region = "us-east-2"
  }
}