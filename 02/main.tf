terraform {
    required_providers {
      aws = {
        source = "hashicorp/aws"
        version = "~> 3.0"
      }
    }
}

provider "aws" {
    region = "eu-south-2"
}

resource "aws_instance" "example" {
    ami = "ami-0f927c75a054d665b" # ubuntu 22.04 // eu-south-2
    instance_type = "t3.micro"
}