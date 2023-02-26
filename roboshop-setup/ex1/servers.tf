resource "aws_instance" "frontend" {
  ami                    = "ami-0a017d8ceb274537d"
  instance_type          = "t3.micro"
  vpc_security_group_ids = ["sg-01a1fb86f66c91c21"]
  tags = {
    Name = "frontend"
  }
}

resource "aws_route53_record" "frontend" {
  zone_id = Z062643811DGQBMMY8AIZ
  name    = "frontend-dev.devopsamn.tech"
  type    = "A"
  ttl     = 30
  records = [aws_instance.frontend.private_ip]
}