output "db_password" {
  value = data.aws_ssm_parameter.db_password.value
}

output "key_pair" {
  value = "aws-shared-key"
}

