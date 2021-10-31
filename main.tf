provider "aws" {
profile = "default"		
region = "ap-southeast-2"
}

resource "aws_vpc" "vpc_terraform" {
  cidr_block = "10.5.0.0/16"
  tags = {
    Name = "vpc_terraform"
  }
}
resource "aws_subnet" "subnet-1-2a" {
  vpc_id            = aws_vpc.vpc_terraform.id
  cidr_block        = "10.5.1.0/25"
  availability_zone = "ap-southeast-2a"

  tags = {
    Name = "subnet-1"
  }
}
resource "aws_subnet" "subnet-1-2b" {
  vpc_id            = aws_vpc.vpc_terraform.id
  cidr_block        = "10.5.2.0/25"
  availability_zone = "ap-southeast-2b"

  tags = {
    Name = "subnet-2"
  }
}
resource "aws_subnet" "subnet-1-2c" {
  vpc_id            = aws_vpc.vpc_terraform.id
  cidr_block        = "10.5.3.0/25"
  availability_zone = "ap-southeast-2c"

  tags = {
    Name = "subnet-3"
  }
}
resource "aws_instance" "EC2" {
  ami           = "ami-0210560cedcb09f07"
  instance_type = "t2.micro"

  tags = {
    Name = "Shekar-EC2-test"
  }
}
