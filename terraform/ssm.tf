resource "aws_ssm_parameter" "db_password" {
  name  = "/db/password"
  type  = "SecureString"
  value = var.db_password

  tags = merge(
    {
      "Name" = "/db/password"
    },
    var.tags,
  )
}

# resource "aws_ssm_parameter" "cloudflare_email" {
#   name  = "/cloudflare/email"
#   type  = "SecureString"
#   value = var.cloudflare_email

#   tags = merge(
#     {
#       "Name" = "/cloudflare/email"
#     },
#     var.tags,
#   )
# }

# resource "aws_ssm_parameter" "cloudflare_key" {
#   name  = "/cloudflare/key"
#   type  = "SecureString"
#   value = var.cloudflare_key

#   tags = merge(
#     {
#       "Name" = "/cloudflare/key"
#     },
#     var.tags,
#   )
# }

# resource "aws_ssm_parameter" "smtp_user" {
#   name  = "/smtp/user"
#   type  = "SecureString"
#   value = var.smtp_user

#   tags = merge(
#     {
#       "Name" = "/smtp/user"
#     },
#     var.tags,
#   )
# }

# resource "aws_ssm_parameter" "smtp_password" {
#   name  = "/smtp/password"
#   type  = "SecureString"
#   value = var.smtp_password

#   tags = merge(
#     {
#       "Name" = "/smtp/password"
#     },
#     var.tags,
#   )
# }

# resource "aws_ssm_parameter" "smtp_from" {
#   name  = "/smtp/from"
#   type  = "SecureString"
#   value = var.smtp_from

#   tags = merge(
#     {
#       "Name" = "/smtp/from"
#     },
#     var.tags,
#   )
# }

