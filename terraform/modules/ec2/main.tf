resource "aws_security_group" "ec2_sg" {
  name        = "${var.project_name}-ec2-sg"
  description = "Allow SSH and HTTP"
  vpc_id      = var.vpc_id

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

resource "aws_instance" "this" {
  ami           = "ami-054ee4a2168300401"
  instance_type = "t3.micro"
  subnet_id     = var.subnet_id
  security_groups = [aws_security_group.ec2_sg.id]

  key_name = var.key_name

  user_data = file("${path.module}/user-data.sh")

  tags = {
    Name = "${var.project_name}-ec2"
  }
}
