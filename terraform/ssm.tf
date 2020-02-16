resource "aws_ssm_parameter" "ssm_items" {
  count = length(var.ssm_items)
  name  = var.ssm_items[count.index][0]
  type  = "SecureString"
  value = var.ssm_items[count.index][1]
  overwrite = true

  tags = merge(
    {
      "Name" = var.ssm_items[count.index][0]
    },
    var.tags,
  )
}

