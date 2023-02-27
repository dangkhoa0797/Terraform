
# Create a Security Group for an EC2 instance 
resource "aws_security_group" "sg-ubuntu" {
  name = "security group ubuntu"
  
  ingress {
    from_port	  = "${var.server_port_ssh}"
    to_port	    = "${var.server_port_ssh}"
    protocol	  = "tcp"
    cidr_blocks	= ["0.0.0.0/0"]
  }
    ingress {
    from_port	  = "${var.server_port_http}"
    to_port	    = "${var.server_port_http}"
    protocol	  = "tcp"
    cidr_blocks	= ["0.0.0.0/0"]
  }
    ingress {
    from_port	  = "${var.server_port_https}"
    to_port	    = "${var.server_port_https}"
    protocol	  = "tcp"
    cidr_blocks	= ["0.0.0.0/0"]
  }
}