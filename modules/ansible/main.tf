resource "null_resource" "ansible" {
  provisioner "remote-exec" {
    connection {
      type = "ssh"
      host = "var.public_ip"
      user = "ec2-user"
      password = "DevOps321"
    }

    inline = [
      "sudo labauto ansibe",
      "ansible-pull -i localhost, -U https://github.com/Imran-code786/wmp-ansible-v4.git main.yml -e env=${var.env} -e COMPONENT=${var.component}"

    ]




  }
}