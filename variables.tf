variable "region" {
  description = "Región de AWS"
  type        = string
  default     = "eu-west-3"
}

variable "bucket_name" {
  description = "Nombre del bucket S3"
  default = "mibucketrandom"
  type        = string
}

variable "table_name" {
  description = "Nombre de la tabla DynamoDB"
  default = "mitablarandom"
  type        = string
}

variable "function_name" {
  description = "Nombre de la función Lambda"
  default = "milambdarandom"
  type        = string
}

