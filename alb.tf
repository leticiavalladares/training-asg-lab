resource "aws_lb_target_group" "blue-tg" {
  name     = "blue-tg"
  port     = 80
  protocol = "HTTP"
  vpc_id   = data.aws_vpc.vpc.id
}

resource "aws_lb_target_group" "green-tg" {
  name     = "green-tg"
  port     = 80
  protocol = "HTTP"
  vpc_id   = data.aws_vpc.vpc.id
}