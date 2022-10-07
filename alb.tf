# TARGET GROUPS -- BLUE
resource "aws_lb_target_group" "blue_tg" {
  name     = "blue-tg"
  port     = 80
  protocol = "HTTP"
  vpc_id   = data.aws_vpc.vpc.id
}

# TARGET GROUPS -- GREEN
resource "aws_lb_target_group" "green_tg" {
  name     = "green-tg"
  port     = 80
  protocol = "HTTP"
  vpc_id   = data.aws_vpc.vpc.id
}

# ASG + TG ATTACHMENT -- BLUE
resource "aws_autoscaling_attachment" "blue_asg_tg" {
  autoscaling_group_name = aws_autoscaling_group.blue_asg.id
  lb_target_group_arn    = aws_lb_target_group.blue_tg.arn
}

# ASG + TG ATTACHMENT -- GREEN
resource "aws_autoscaling_attachment" "green_asg_tg" {
  autoscaling_group_name = aws_autoscaling_group.green_asg.id
  lb_target_group_arn    = aws_lb_target_group.green_tg.arn
}

# LOAD BALANCER LISTENER
resource "aws_lb_listener" "blue_green_listener" {
  load_balancer_arn = aws_lb.blue_green_website.arn
  port              = "80"
  protocol          = "HTTP"


  default_action {
    type             = "forward"
    #target_group_arn = aws_lb_target_group.blue_tg.arn
    forward          {
        target_group {
          arn = aws_lb_target_group.blue_tg.arn
        }
        target_group {
          arn = aws_lb_target_group.green_tg.arn
        }
        stickiness {
          duration   = 300     # seconds
          enabled    = true
        }
    }
  }
}