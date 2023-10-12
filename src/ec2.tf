resource "aws_instance" "ec2_teste" {
  instance_type = "t2.micro"
  ami           = "ami-0ff8a91507f77f867"
}