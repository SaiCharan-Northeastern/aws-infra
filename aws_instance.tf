
resource "aws_instance" "webapp-instance" {

  ami = var.ami_id

  instance_type = var.instance_type
associate_public_ip_address = true
  root_block_device {
    delete_on_termination = true
    volume_size           = var.volume_size
    volume_type           = var.volume_type
  }
  disable_api_termination = false


  vpc_security_group_ids = [aws_security_group.webapp_security_grip.id]

  subnet_id = aws_subnet.public-1.id



}
