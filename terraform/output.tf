output "objetive" {
  value       = "${aws_instance.ec2_instance.public_dns}"
}

output "connection" {
  value       = "ssh -i 'terraform/kp/${aws_key_pair.demo_sshkey_tf.key_name}' admin@${aws_instance.ec2_instance.public_dns}"
}

output "ansible" {
  value       = "ansible-playbook -i inventory.ini --key-file ../terraform/kp/${aws_key_pair.demo_sshkey_tf.key_name} main.yaml"
}

