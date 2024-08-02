resource "null_resource" "web_server" {
  provisioner "remote-exec" {
    inline = [
      "sudo apt-get update",
      "sudo apt-get install -y nginx",
      "echo 'salam dari binjai, belajar terraform diks' | sudo tee /var/www/html/index.html",
      "sudo apt-get install -y mysql-server"
    ]

    connection {
      type        = "ssh"
      user        = var.ssh_user
      host        = var.server_ip
      private_key = file(var.ssh_private_key_path)
    }
  }
}
