provider "aws" {
region = "us-east-1"

}

resource "aws_instance" "key" {
ami = "ami-0f3f13f145e66a0a3"
instance_type = "t2.micro"
key_name = "master"
count = 1
vpc_security_group_ids = [aws_security_group.demo-sg.id]
tags = {
Name = "project-instance"
Environment = "dev"
}
}
