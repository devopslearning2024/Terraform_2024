data "template_file" "user_data" {
  template = file("auto.sh")
}

resource "aws_instance" "Terraform" {
  ami           = var.ami
  instance_type = var.type
  key_name      = var.key
  #security_groups = var.security_group.id
  user_data = data.template_file.user_data.rendered
  tags = {
    Name = var.tags
  }

}
