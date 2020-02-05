resource "aws_instance" "web" {
  ami           = "ami-07ebfd5b3428b6f4d"
  instance_type = "t2.micro"

  key_name = "050220"

  tags = {
    Name = "Tsau maailm"
  }

  user_data = file("${path.module}/ec2-setup.sh")
}


output "web_id" {
  value = aws_instance.web.id
}


output "web_ip" {
  value = aws_instance.web.public_ip
}

