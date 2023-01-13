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
  access_key = "AKIAZKU6FSALSNTA524V"
  secret_key = "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"
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
