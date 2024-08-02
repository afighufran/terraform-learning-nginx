variable "server_ip" {
  description = "ip si server ni bro"
  type        = string
  default     = ""
}

variable "ssh_user" {
  description = "username ssh bang untuk provisioning"
  type        = string
  default     = ""
}

variable "ssh_private_key_path" {
  description = "path private key ssh nya bang id_rsa nya"
  type        = string
  default     = ""
}
