provider "aws" {
  region = "us-east-2"
}
module "web-app-elb" {
  source = "../modules/aws_elb"
  elb_name           = var.elb_name
  availability_zones = var.availability_zones
  elb_listener       = var.elb_listener
}
module "web-app-asg" {
    source             = "../modules/aws_autoscaling"
    load_balancer      = [var.elb_name]
    name_prefix        = var.name_prefix
    ami_id             = var.ami_id
    instance_type      = var.instance_type
    autoscaling_name   = var.autoscaling_name
    min_size           = var.min_size
    max_size           = var.max_size
    availability_zones = var.availability_zones
    ingress_rules      = var.ingress_rules
    sg_name            = var.sg_name
}
