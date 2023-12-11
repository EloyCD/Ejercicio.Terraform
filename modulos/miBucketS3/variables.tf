variable "bucket_name" {
  description = "miBucketS3"
  type        = string
}

variable "region" {
  description = "Región de AWS donde se creará el bucket"
  type        = string
  default     = "eu-west-1"
}


variable "tags" {
  description = "Etiquetas para el bucket"
  type        = map(string)
  default     = {
    Name        = "mi_bucket_s3_aws"
    Environment = "Producción"
  }
}

