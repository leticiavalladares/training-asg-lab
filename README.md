# Application Load Balancer and AutoScalation Group on AWS
<!-- BEGIN_TF_DOCS -->
## Status

[![Terraform deployment for alb](https://github.com/leticiavalladares/training-asg-lab/actions/workflows/deploy-infra.yaml/badge.svg)](https://github.com/leticiavalladares/training-asg-lab/actions/workflows/deploy-infra.yaml)

## Context

This project is set to build a demo of the Autoscaling Group and Load Balancer in AWS:
* Security Groups for LB and Servers
* Launch Template
* Target Groups
* Load Balancer
* Load Balancer Attachement

![ALB and RDS ](https://user-images.githubusercontent.com/112868363/195099263-cf8f3173-3e1c-4f76-a244-991e8e51f027.png)

## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | 4.34.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_autoscaling_attachment.blue_asg_tg](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/autoscaling_attachment) | resource |
| [aws_autoscaling_attachment.green_asg_tg](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/autoscaling_attachment) | resource |
| [aws_autoscaling_group.blue_asg](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/autoscaling_group) | resource |
| [aws_autoscaling_group.green_asg](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/autoscaling_group) | resource |
| [aws_launch_template.blue_template](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/launch_template) | resource |
| [aws_launch_template.green_template](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/launch_template) | resource |
| [aws_lb.blue_green_website](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/lb) | resource |
| [aws_lb_listener.blue_green_listener](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/lb_listener) | resource |
| [aws_lb_target_group.blue_tg](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/lb_target_group) | resource |
| [aws_lb_target_group.green_tg](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/lb_target_group) | resource |
| [aws_route_table.rt_pub_subnet_b](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route_table) | resource |
| [aws_route_table_association.pub_assoc-b](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route_table_association) | resource |
| [aws_security_group.app_server](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/security_group) | resource |
| [aws_security_group.blue_green_lb](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/security_group) | resource |
| [aws_subnet.pub_subnet_b](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/subnet) | resource |
| [aws_ami.ubuntu_image](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/ami) | data source |
| [aws_internet_gateway.ig](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/internet_gateway) | data source |
| [aws_subnet.priv_subnet_1](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/subnet) | data source |
| [aws_subnet.priv_subnet_2](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/subnet) | data source |
| [aws_subnet.pub_subnet](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/subnet) | data source |
| [aws_vpc.vpc](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/vpc) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_ami_name"></a> [ami\_name](#input\_ami\_name) | The name of the ami | `string` | n/a | yes |
| <a name="input_aws_ami_owner"></a> [aws\_ami\_owner](#input\_aws\_ami\_owner) | The owner id of the ami | `string` | n/a | yes |
| <a name="input_aws_pub_subnet_cidr_block_b"></a> [aws\_pub\_subnet\_cidr\_block\_b](#input\_aws\_pub\_subnet\_cidr\_block\_b) | IP range for the public subnet b | `string` | n/a | yes |
| <a name="input_aws_region"></a> [aws\_region](#input\_aws\_region) | Region to deploy | `string` | n/a | yes |
| <a name="input_ig"></a> [ig](#input\_ig) | n/a | `any` | n/a | yes |
| <a name="input_instance_type"></a> [instance\_type](#input\_instance\_type) | n/a | `any` | n/a | yes |
| <a name="input_keypair"></a> [keypair](#input\_keypair) | The owner id of the ami | `string` | n/a | yes |
| <a name="input_priv_subnet_a"></a> [priv\_subnet\_a](#input\_priv\_subnet\_a) | Private subnet | `string` | n/a | yes |
| <a name="input_priv_subnet_b"></a> [priv\_subnet\_b](#input\_priv\_subnet\_b) | n/a | `any` | n/a | yes |
| <a name="input_pub_subnet"></a> [pub\_subnet](#input\_pub\_subnet) | n/a | `any` | n/a | yes |
| <a name="input_vpc_name"></a> [vpc\_name](#input\_vpc\_name) | n/a | `any` | n/a | yes |

## Outputs

No outputs.
<!-- END_TF_DOCS -->