resource "aws_instance" "web1" {
  ami           = "ami-01cc34ab2709337aa"
  instance_type = "t2.micro"
  subnet_id = "subnet-0b1250d733767bafe"

}
