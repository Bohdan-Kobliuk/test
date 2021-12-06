resource "aws_instance" "web1" {
  ami           = "ami-01cc34ab2709337aa"
  instance_type = "t2.micro"

}

