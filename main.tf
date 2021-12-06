resource "aws_instance" "web1" {
  ami           = "ami-01cc34ab2709337aa"
  instance_type = "t2.micro"
  subnet_id = "subnet-0b1250d733767bafe"

}
module "vpc" {
  source  = "terraform-aws-modules/vpc/aws"
  version = "2.77.0"

  name                 = "task"
  cidr                 = "10.0.0.0/16"
  azs                  = ["us-east-1a","us-east-1b"]
  public_subnets       = ["10.0.4.0/24"]
  enable_dns_hostnames = true
  enable_dns_support   = true
}
