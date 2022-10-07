resource "aws_lb" "blue_green_website" {
  name               = "blue-green-website"
  internal           = false
  load_balancer_type = "application"
  security_groups    = [aws_security_group.blue_green_lb.id]
  subnets            = [data.aws_subnet.pub_subnet.id, aws_subnet.pub_subnet_b.id]

  tags = {
    Name = "blue-green-website"
  }

  depends_on = [
    aws_subnet.pub_subnet_b
  ]
}