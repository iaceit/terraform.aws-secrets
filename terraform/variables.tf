variable "region" {
  default = "ap-southeast-2"
}

variable "tags" {
  type = map(string)

  default = {
    "service"    = "iaceit.com"
    "created-by" = "terraform"
    "owner"      = "iaceit.com"
    "repo"       = "terraform.aws-secrets"
  }
}

variable "key_pair_path" {
  default = "./aws-shared-key.pub"
}

variable "ssm_items" {
  type = list(list(string))

  default = [
    ["key_name", "secret_value"]
  ]
}
