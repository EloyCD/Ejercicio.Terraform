output "function_name_output" {
  description = "Nombre de la función Lambda creada"
  value       = aws_lambda_function.lambda_function.function_name
}

output "function_arn" {
  description = "ARN de la función Lambda creada"
  value       = aws_lambda_function.lambda_function.arn
}
