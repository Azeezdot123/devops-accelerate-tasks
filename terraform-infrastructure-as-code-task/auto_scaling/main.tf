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

# heeloo


# Creating the autoscaling launch configuration
resource "aws_launch_configuration" "scale_conf" {
  name          = "webserver-config"
  image_id      = "ami-018d291ca9ffc002f"
  instance_type = "t2.micro"

  lifecycle {
    create_before_destroy = true
  }
}

# Creating the autoscaling group
resource "aws_autoscaling_group" "myautoscale" {
  launch_configuration      = aws_launch_configuration.scale_conf.name
  name                      = "webserver-group"
  availability_zones        = ["us-west-1b", "us-west-1c"]
  max_size                  = 6
  min_size                  = 4
  health_check_type         = "EC2"
  termination_policies      = ["OldestInstance"]

  lifecycle {
    create_before_destroy = true
  }
}