
# Output variable: Public IP address
output "public_ip" {
  value = "${aws_instance.UbuntuServer.public_ip}"
}