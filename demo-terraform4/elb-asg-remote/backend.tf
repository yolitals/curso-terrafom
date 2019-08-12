terraform {
  backend "s3" {
    bucket = "terraform-backend-platzi"
    key    = "terraform/asg-elb-remote/dev"
    region = "us-east-2"
  }
}