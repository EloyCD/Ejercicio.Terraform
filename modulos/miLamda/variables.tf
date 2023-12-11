variable "function_name" {
  description = "lambda_function"
  type        = string
}

variable "runtime" {
  description = "Entorno de ejecución de la función Lambda"
  type        = string
  default     = "python3.9"  
}

variable "handler" {
  description = "Manejador de la función Lambda"
  type        = string
  default     = "index.handler"  
}

variable "source_code_path" {
  description = "Ruta al código fuente de la función Lambda (ZIP)"
  type        = string
}

variable "role_name" {
  description = "Nombre del rol IAM para la función Lambda"
  type        = string
}

variable "tags" {
  description = "Etiquetas para la función Lambda"
  type        = map(string)
  default     = {
    Name        = "MiLambdaFunction"
    Environment = "Producción"
  }
}

variable "region" {
  description = "Región de AWS"
  type        = string
  default     = "eu-west-3" 
}

