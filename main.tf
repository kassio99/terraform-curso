terraform {
  required_version = ">= 1.1.0"
  required_providers {
    aws = ">= 4.0"
  }
}

provider "aws"  {
    profile = "pessoal"
    shared_credentials_file = "~/.aws/credentials"
    region = "us-eat-1"
}
