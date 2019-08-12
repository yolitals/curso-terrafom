terraform {
  backend "s3" {
    bucket = "terraform-backend-platzi"
    key    = "terraform/asg-elb-local/dev"
    region = "us-east-2"
  }
}