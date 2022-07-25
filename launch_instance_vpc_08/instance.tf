resource "aws_instance" "example" {
  ami="${lookup(var.AMIS, var.AWS_REGION)}"
  instance_type = "t2.micro"
}

# ec2 instance subnet
subnet_id = aws_subnet.main-public-1.id

# security group
vpc_security_group_ids = [aws_security_group.allow-ssh.id]

key_name = aws_key_pair.mykeypair.key_name