variable "aws_region" {
	default = "ap-south-1"
}
variable "key_name" {
	default = "aws_key"
}
variable "instance_type" {
	default = "t2.micro"
}
variable "public_key_path" {
	default = "~/.ssh/aws_key.pub"
}
