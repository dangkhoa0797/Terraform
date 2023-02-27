# Configure the AWS provider
provider "aws" {
  region     = "us-east-2"
  access_key = " "
  secret_key = " "
}

resource "tls_private_key" "pk" {
  algorithm = "RSA"
  rsa_bits  = 4096
}

resource "aws_key_pair" "kp" {
  key_name   = "my-KeyPair"       # Create a "my-KeyPair" to AWS!!
  public_key = tls_private_key.pk.public_key_openssh

  provisioner "local-exec" { # Create a "my-KeyPair.pem" to your computer Linux!!
    command = "echo '${tls_private_key.pk.private_key_pem}' > ./my-KeyPair.pem"
  }
}