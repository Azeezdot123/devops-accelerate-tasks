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

# Create a Loadbalancer
resource "aws_lb" "lb" {
  name               = "application-lb"
  internal           = false
  load_balancer_type = "application"
  subnets            = [var.subnet1, var.subnet2]

  tags = {
    Environment = "LoadBalancer"
  }
}