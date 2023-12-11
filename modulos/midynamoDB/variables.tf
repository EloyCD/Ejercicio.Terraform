variable "table_name" {
  description = "midynamoDB"
  type        = string
}

variable "read_capacity" {
  description = "Capacidad de lectura por segundo para la tabla"
  type        = number
  default     = 5
}

variable "write_capacity" {
  description = "Capacidad de escritura por segundo para la tabla"
  type        = number
  default     = 5
}

variable "hash_key" {
  description = "Nombre del atributo de clave hash para la tabla"
  type        = string
}

variable "hash_key_type" {
  description = "Tipo de datos para el atributo de clave hash"
  type        = string
  default     = "S"  
}

variable "region" {
  description = "Región de AWS"
  type        = string
  default     = "us-east-1"  
}

