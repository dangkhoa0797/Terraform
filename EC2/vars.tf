# Input variable: server port
variable "server_port_ssh" {
  description = "The port the server will use for SSH connect"
  default = "22"
}

variable "server_port_http" {
  default = "80"
}

variable "server_port_https" {
  default = "443"
}