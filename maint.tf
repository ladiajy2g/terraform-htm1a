provider "aws" {
  region = var.aws_region
  profile = var.profile
}

resource "aws_vpc" "terraformE1-vpc" {
  cidr_block = "10.0.0.0/16"
}

resource "aws_subnet" "terraformE1-sn" {
  vpc_id            = aws_vpc.terraformE1-vpc.id
  cidr_block        = var.subnet
  availability_zone = "us-west-2a"
  tags = {
    Name = "${var.servername}subnet"
  }
}

resource "aws_instance" "terraformE1" {
  ami           = var.ami
  instance_type = var.instance_type
  key_name      = var.key_name

  user_data = file("installsite.sh")

  tags = {
    Name = "terraform-linux1"
  }

  vpc_security_group_ids = [var.security_group_id]
}