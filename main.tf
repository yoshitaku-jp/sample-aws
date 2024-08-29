terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.60.0"
    }
  }

  required_version = ">= 1.9.0"
}

provider "aws" {
  region  = "us-west-2"
}

resource "aws_instance" "app_server" {
  ami           = "ami-05134c8ef96964280"
  instance_type = "t3.nano"

  tags = {
    Name = "Handson_yoshitakuuuuuuuuuuuuuuuuuuuuu"
    TED = "20240829_Handson"
  }
}
