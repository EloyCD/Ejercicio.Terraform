provider "aws" {
  region = var.region
}



module "s3_bucket" {
  source       = "./modulos/miBucketS3"
  bucket_name  = var.bucket_name  
  region       = var.region
  tags         = {
    Name        = "MiBucket"
    Environment = "Producción"
  }
}

module "dynamodb_table" {
  source        = "./modulos/midynamoDB"
  table_name    = var.table_name
  read_capacity = 5
  write_capacity = 5
  hash_key       = "ID"
  hash_key_type  = "S"
  region        = var.region
}

module "lambda_function" {
  source            = "./modulos/miLamda"
  function_name     = var.function_name
  runtime           = "python39"
  handler           = "index.handler"
  source_code_path  = "/mnt/c/Users/eloyc/mi-repositorio-terraform"
  role_name         = "lambda_execution_role"
  region            = var.region
}


