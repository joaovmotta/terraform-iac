terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }

  required_version = ">= 1.2.0"
}

provider "aws" {
  region  = "us-west-2"
}

resource "aws_instance" "app_server" {
  ami           = "ami-0efcece6bed30fd98" //os name from aws
  instance_type = "t2.micro"
  key_name = "iac-noteuol"
  tags = {
    Name = "Ansible Instance" //EC2 instanceName
  }
}