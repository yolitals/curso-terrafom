terraform {
  backend "s3" {
    bucket = "terraform-backend-platzi"
    key    = "terraform/asg/dev"
    region = "us-east-2"
  }
}