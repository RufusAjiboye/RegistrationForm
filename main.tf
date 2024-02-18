resource "aws_instance" "JenkinsServer" {

  ami                         = "ami-0323d48d3a525fd18"
  instance_type               = "t2.large"
  key_name                    = "test100"
  subnet_id                   = aws_subnet.subnet_public1.id
  vpc_security_group_ids      = [aws_security_group.web-traffic.id]
  associate_public_ip_address = true

  tags = {
    Name = "Jenkin-Server"
  }
}


resource "aws_instance" "AnsibleServer" {

  ami                         = "ami-0323d48d3a525fd18"
  instance_type               = "t2.large"
  key_name                    = "test100"
  subnet_id                   = aws_subnet.subnet_public1.id
  vpc_security_group_ids      = [aws_security_group.web-traffic.id]
  associate_public_ip_address = true

  tags = {
    Name = "Ansible-Server"
  }
}

resource "aws_instance" "EKSServer" {

  ami                         = "ami-0323d48d3a525fd18"
  instance_type               = "t2.medium"
  key_name                    = "test100"
  subnet_id                   = aws_subnet.subnet_public1.id
  vpc_security_group_ids      = [aws_security_group.web-traffic.id]
  associate_public_ip_address = true

  tags = {
    Name = "EKS-Server"
  }
}

