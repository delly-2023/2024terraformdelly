provider "aws" {
  region     = "us-east-1"
}
resource "aws_instance" "terra1" {
  ami           = "ami-0149b2da6ceec4bb0"
  instance_type = "t2.large"
  tags = {
    Name = "terra1"
  }
}
resource "aws_instance" "terra2" {
  ami           = "ami-0149b2da6ceec4bb0"
  instance_type = "t2.large"
  tags = {
    Name = "terra2"
  }
}
resource "aws_instance" "terra3" {
  ami           = "ami-0b0dcb5067f052a63"
  instance_type = "t2.medium"
  tags = {
    Name = "terra3"
  }
}
