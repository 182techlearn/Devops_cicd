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


#tomcat server
resource "aws_instance" "tomcat_server" {
  ami           = "ami-0f19324397f53458f"
  instance_type = "t3.micro"
  key_name      = "sshkey-si"

  tags = {
    Name        = "tomcat_server"
    Environment = "Dev"
    Owner       = "Silambu"
  }
}

#docker server
resource "aws_instance" "docker_server" {
  ami           = "ami-0f19324397f53458f"
  instance_type = "t3.micro"
  key_name      = "sshkey-si"

  tags = {
    Name        = "docker_server"
    Environment = "Dev"
    Owner       = "Silambu"
  }
}



#Ansible server
resource "aws_instance" "ansible_server" {
  ami           = "ami-05fbd65e334e88c16"
  instance_type = "t3.micro"
  key_name      = "sshkey-si"

  tags = {
    Name        = "ansible_server"
    Environment = "Dev"
    Owner       = "Silambu"
  }
}


resource "aws_instance" "eksbootstrap" {
  ami           = "ami-05fbd65e334e88c16"
  instance_type = "t3.micro"
  key_name      = "sshkey-si"
  iam_instance_profile = aws_iam_instance_profile.eks_admin_profile1.name


  tags = {
    Name        = "eks_bootstrap_server"
    Environment = "Dev"
    Owner       = "Silambu"
  }
}
