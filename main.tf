terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
}

provider "aws" {
  region     = "us-east-1"
}
# Creating nginx_server
resource "aws_instance" "nginx_server" {
  ami               = "ami-06878d265978313ca"
  instance_type     = "t2.micro"
  availability_zone = "us-east-1a"
  user_data         = file("nginx_ser")

  tags = {
    Name = "nginx_ser"
  }
}
