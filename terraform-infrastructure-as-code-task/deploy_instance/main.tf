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

# Create an ec2 instance
resource "aws_instance" "one_server" {
  ami           = "ami-018d291ca9ffc002f"
  instance_type = "t2.micro"

  tags = {
    Name = "OneInstanceDeploy"
  }
}