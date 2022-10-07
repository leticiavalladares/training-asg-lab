resource "aws_security_group" "app_server" {
  name        = "asg-app-sg"
  description = "Allow connection"
  vpc_id      = data.aws_vpc.vpc.id

  # INBOUND 
  ingress {
    description = "Access port 80"
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    security_groups = [aws_security_group.blue_green_lb.id]
  }

  # OUTBOUND
  egress {
    description = "Access to the internet"
    from_port   = 0
    to_port     = 0
    protocol    = "-1" # BOTH TCP and UDP PROTOCOL
    cidr_blocks = ["0.0.0.0/0"]
  }
  tags = {
    Name = "app-server-sg"
  }
}

resource "aws_security_group" "blue_green_lb" {
  name        = "blue-green-lb-sg"
  description = "Allow connection to the Load Balancer"
  vpc_id      = data.aws_vpc.vpc.id

  # INBOUND 
  ingress {
    description = "Access to port 80"
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  # OUTBOUND
  egress {
    description = "Access to the internet"
    from_port   = 0
    to_port     = 0
    protocol    = "-1" # BOTH TCP and UDP PROTOCOL
    cidr_blocks = ["0.0.0.0/0"]
  }
  tags = {
    Name = "blue-green-lb-sg"
  }
}