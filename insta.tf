resource "aws_instance" "instance1" {
  ami                         = "ami-03972092c42e8c0ca"
  instance_type               = "t2.small"
  count                       = 1
  key_name                    = "kohli"
  vpc_security_group_ids     = ["vpc-07ae2dcf5be5e7883"]
  subnet_id                   = "subnet-001dafb658ac7d5b2"
  associate_public_ip_address = true
  user_data                   = "${file("data.sh")}"

  tags = {
    Name = "instance1"
  }
}
