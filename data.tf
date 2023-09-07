# AWS caller details
data "aws_caller_identity" "current" {}

# VPC data
data "aws_vpc" "selected" {
  filter {
    name   = "state"
    values = ["available"]
  }
}

# Select an image for the instances
data "aws_ami" "ubuntu" {
  most_recent = true

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-focal-20.04-amd64-server-*"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  owners = ["099720109477"] # Canonical
}
