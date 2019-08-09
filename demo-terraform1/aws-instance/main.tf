provider "aws" {
  region = "us-east-2"
}

resource "aws_instance" "web" {
  ami           = "ami-03e667343698f61c4"
  instance_type = "t2.micro"

  tags = {
    Name = "terraform-vm"
  }
}