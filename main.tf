terraform {
  required_version = ">= 1.1.0"
  required_providers {
    aws = ">= 4.0"
  }
}

provider "aws" {
  region  = "us-east-1"
  profile = "pessoal"
}

resource "aws_instance" "ec2_teste" {
  ami                         = "ami-0150ccaf51ab55a51"
  instance_type               = "t2.micro"
  key_name                    = "KP-Pessoal-East_1"
  associate_public_ip_address = true

  tags = {
    Name = "ec2-teste-pessoal"
  }
}
