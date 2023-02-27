terraform {
  backend "s3" {
    bucket = "terraform-ab71"
    key    = "05-s3-state/terraform-ab71"
    region = "us-east-1"
  }
}

resource "aws_instance" "ec2" {
  ami = "ami-0a017d8ceb274537d"
  instance_type = "t3.micro"
  vpc_security_group_ids = ["sg-01a1fb86f66c91c21"]
  tags = {
    Name = "s3bucket"
  }

}