resource "aws_instance" "kubernetes" {
  ami           = "ami-0f9d9a251c1a44858"
  instance_type = "t2.micro"

  tags = {
    Name = "kubernetes"
  }
}
