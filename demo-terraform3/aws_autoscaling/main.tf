provider "aws" {
  region = "us-east-2"
}

resource "aws_launch_configuration" "as_conf" {
  name_prefix   = var.name_prefix
  image_id      = var.ami_id
  instance_type = var.instance_type
  lifecycle {
    create_before_destroy = true
  }
}

resource "aws_autoscaling_group" "bar" {
  name                 = var.autoscaling_name
  launch_configuration = "${aws_launch_configuration.as_conf.name}"
  min_size             = var.min_size
  max_size             = var.max_size
  availability_zones = var.availability_zones
  lifecycle {
    create_before_destroy = true
  }
}