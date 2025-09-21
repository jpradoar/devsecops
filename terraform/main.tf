resource "aws_instance" "ec2_instance" {
  ami                         = var.ami
  instance_type               = var.instance_type
  key_name                    = aws_key_pair.demo_sshkey_tf.key_name
  vpc_security_group_ids      = [aws_security_group.allow_ssh.id]
  associate_public_ip_address = var.ec2_associate_public_ip_address
  subnet_id                   = var.subnet_id
  user_data                   = file("init-script.sh")

  root_block_device {
    delete_on_termination = var.rbd_delete_on_termination
    encrypted             = var.rbd_encrypted
    volume_size           = var.rbd_volume_size
    volume_type           = var.rbd_volume_type
  }
  # Second disc to store important data
  ebs_block_device {
    device_name           = var.ebsbd_device_name
    delete_on_termination = var.ebsbd_delete_on_termination
    encrypted             = var.ebsbd_encrypted
    volume_size           = var.ebsbd_volume_size
    volume_type           = var.ebsbd_volume_type
  }

  tags = {
    Name        = "demo-borrar"
    Environment = "development"
  }


   metadata_options {
    http_tokens = "required"
   }


  depends_on = [aws_security_group.allow_ssh]
}
