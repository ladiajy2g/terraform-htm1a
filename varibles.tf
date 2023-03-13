variable "servername" {
  type        = string
  description = "The name of the server"
}

variable "aws_region" {
  type        = string
  description = "The AWS region to deploy the EC2 instance in"
}

variable "profile" {
  type        = string
  description = "The profile name of aws authentication"
}

variable "ami" {
  type        = string
  description = "The AMI ID for the EC2 instance"
}

variable "instance_type" {
  type        = string
  description = "The instance type for the EC2 instance"
}

variable "key_name" {
  type        = string
  description = "The name of the key pair to use for SSH access to the EC2 instance"
}

variable "security_group_id" {
  type        = string
  description = "The ID of the security group to use for the EC2 instance"
}

variable "subnet"{
    description = "subnet IP address space"
    type = string
}