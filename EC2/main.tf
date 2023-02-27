# Configure the AWS provider
provider "aws" {
  region     = "us-east-2"
  access_key = " "
  secret_key = " "
}

# Create an EC2 instance
resource "aws_instance" "UbuntuServer" {
  ami           = "ami-00eeedc4036573771"
  instance_type = "t2.micro"
  key_name = "linux"
  vpc_security_group_ids  = ["${aws_security_group.sg-ubuntu.id}"]
  associate_public_ip_address = true
  root_block_device {
    volume_type = "gp2"
    volume_size = "8"
    delete_on_termination = true
  }
  tags = {
    Name = "DamianUbuntuServer"
  }
}
