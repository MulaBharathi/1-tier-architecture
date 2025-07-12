output "public_ip" {
	description = "Public Ip of the EC2 instance"
	value = aws_instance.flask_ec2.public_ip
}
