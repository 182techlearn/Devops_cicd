resource "aws_instance" "jenkins_server" {
  ami           = "ami-022374b883d9d7931"
  instance_type = "t3.micro"
  key_name      = "sshkey-si"

  tags = {
    Name        = "Jenkins_server"
    Environment = "Dev"
    Owner       = "Silambu"
  }
}
