terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
    region = "ap-southeast-1"
}

resource "aws_instance" "terraform-practice01"{
    ami = "ami-01938df366ac2d954"
    instance_type = "t2.micro"
    availability_zone = "ap-southeast-1a"
        tags = {
            name = "terraform-practice01"
        }
}