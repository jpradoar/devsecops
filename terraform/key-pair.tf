# ssh-keygen -t rsa -b 4096 -f $PWD/demo_sshkey_tf
resource "aws_key_pair" "demo_sshkey_tf" {
  key_name   = "demo_sshkey_tf"
  public_key = file("kp/demo_sshkey_tf.pub") 
}