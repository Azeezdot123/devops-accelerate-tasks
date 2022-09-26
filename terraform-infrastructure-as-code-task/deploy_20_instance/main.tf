terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
    }

  }
}

provider "aws" {
  profile = "default"
  region  = "us-west-1"
}

resource "aws_instance" "servers" {
  count         = 20
  ami           = lookup(var.ami,var.region)
  instance_type = "t2.micro"

  tags = {
    Name = "Server-${count.index}"
  }
}