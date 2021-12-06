resource "aws_instance" "web1" {
  ami           = "ami-01cc34ab2709337aa"
  instance_type = "t2.micro"

}
resource "aws_security_group" "allow_http" {
  name        = "allow_http"

  ingress {
    from_port        = 80
    to_port          = 80
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }
}
