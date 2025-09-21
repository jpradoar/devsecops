variable "aws_region" { default = "us-east-1" }
variable "aws_profile" { default = "development" }
variable "aws_access_key" { default = "" }
variable "aws_secret_key" { default = "" }

variable "vpc_id" { default = "" }
variable "subnet_id" { default = "" }


variable "instance_type" { default = "t2.medium" }
variable "ami" { default = "ami-064519b8c76274859" }
variable "ec2_associate_public_ip_address" { default = true }

variable "rbd_delete_on_termination" { default = "true" }
variable "rbd_encrypted" { default = "true" }
variable "rbd_volume_size" { default = "30" }
variable "rbd_volume_type" { default = "gp3" }

variable "ebsbd_device_name" { default = "/dev/xvdba" }
variable "ebsbd_delete_on_termination" { default = "true" }
variable "ebsbd_encrypted" { default = "true" }
variable "ebsbd_volume_size" { default = "10" }
variable "ebsbd_volume_type" { default = "gp3" }

# secrets.tfvars
variable "slack_webhook" {
  default     = ""
  type        = string
  sensitive   = true
}
