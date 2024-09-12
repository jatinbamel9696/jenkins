resource "aws_key_pair" "example" {
  key_name   = "examplekey"
  #public_key = file("~/.ssh/terraform.pub")
  public_key = var.pub_key
}

resource "aws_instance" "example" {
  key_name      = aws_key_pair.example.key_name
  ami           = "ami-0182f373e66f89c85"
  instance_type = "t2.micro"

  connection {
    type        = "ssh"
    user        = "ec2-user"
   # private_key = file("~/.ssh/terraform")
    private_key =  var.private_key 
    host        = self.public_ip
  }

  provisioner "remote-exec" {
    inline = [
      "sudo amazon-linux-extras enable nginx1.12",
      "sudo yum -y install nginx",
      "sudo systemctl start nginx"
    ]
  }
}