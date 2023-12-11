provider "aws" {
  region = var.region
}

resource "aws_dynamodb_table" "dynamodb_table" {
  name           = var.table_name
  hash_key       = var.hash_key
  attribute {
    name = var.hash_key
    type = var.hash_key_type
  }

  read_capacity  = var.read_capacity
  write_capacity = var.write_capacity
}


