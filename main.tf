data "aws_route53_zone" "this" {
  count = var.existent_zone == true ? 1 : 0

  name         = var.name
  private_zone = var.private_zone
}

resource "aws_route53_zone" "this" {
  count = var.existent_zone == false ? 1 : 0

  name = var.name

  dynamic "vpc" {
    for_each = var.private_zone == true ? [1] : []

    content {
      vpc_id = var.vpc_id
    }
  }

  tags = var.tags
}
