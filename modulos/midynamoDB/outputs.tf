output "table_name_output" {
  description = "Nombre de la tabla DynamoDB creada"
  value       = aws_dynamodb_table.dynamodb_table.name
}

output "table_arn" {
  description = "ARN de la tabla DynamoDB creada"
  value       = aws_dynamodb_table.dynamodb_table.arn
}
