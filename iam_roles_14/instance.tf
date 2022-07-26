resource "aws_instance" "example" {
  ami=var.AMIS[var.AWS_REGION]
  instance_type = "t2.micro"


  subnet_id=aws_subnet.main-public-1.subnet_id

  vpc_security_group_ids = [aws_securitygroup.example-instance.id]

  key_name = aws_key_pair.mykeypair.key_name

    # role 
  iam_instance_profile = aws_iam_instance_profile.s3-my-bucket-role-instanceprofile.name


}

