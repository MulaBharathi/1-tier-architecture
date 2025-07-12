resource "aws_key_pair" "deployer" {
	key_name = var.key_name
	public_key = file(var.public_key_path)
}

resource "aws_security_group" "flask_sg" {
	name = "flask_sg"
	description = "Allow SSH and Flask port"
	
	
	ingress {
		description = "Allow SSH"
		from_port = 22
		to_port = 22
		protocol = "tcp"
		cidr_blocks = ["0.0.0.0/0"]
	}
	ingress {
`		description = "Allow Flask"
		from_port = 5000
		to_port = 5000
		protocol = "tcp"
		cidr_block = ["0.0.0.0/0"]
	}
	egress {
		from_port = 0
		to_port = 0
		protocol = "-1"
		cidr_block = ["0.0.0.0/0"]
	}
}
resource "aws_instance" "flask_ec2" {
	ami = "ami-0a1235697f4afa8a4"
	instance_type = var.instance_type
	key_name = var.key_name
	vpc_security_group_ids = [aws_security_group.flask_sg.id]
	tags = {
		name = "1-tier"
	}
}
