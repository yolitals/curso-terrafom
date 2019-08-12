instance_type = "t2.micro"
min_size      = 1
max_size      = 2
elb_name      = "platzi-elb-module"
elb_listener  = [
        {
            lb_port = "80", 
            lb_protocol = "http", 
            instance_port="80", 
            instance_protocol = "http"
        }
    ]
sg_name = "asg-sg"
ingress_rules  = [
        {
            from_port = "80", 
            to_port = "80", 
            protocol="tcp", 
            cidr_blocks = ["0.0.0.0/0"]
        },
        {
            from_port = "22", 
            to_port = "22", 
            protocol="tcp", 
            cidr_blocks = ["0.0.0.0/0"]
        }
    ]
