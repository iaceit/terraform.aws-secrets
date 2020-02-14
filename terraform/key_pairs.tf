resource "aws_key_pair" "aws-shared-key" {
  key_name   = "aws-shared-key"
  public_key = data.local_file.public_ssh_key.content
}

data "local_file" "public_ssh_key" {
  filename = var.key_pair_path
}

