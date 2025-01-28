resource "aws_sqs_queue" "order-product-create-dlq" {
  name                       = "order-product-create-dlq"
  message_retention_seconds  = 1209600
  max_message_size           = 262144
}

resource "aws_sqs_queue" "order-product-delete-dlq" {
  name                       = "order-product-delete-dlq"
  message_retention_seconds  = 1209600
  max_message_size           = 262144
}

resource "aws_sqs_queue" "order-product-update-dlq" {
  name                       = "order-product-update-dlq"
  message_retention_seconds  = 1209600
  max_message_size           = 262144
}

resource "aws_sqs_queue" "payment-order-create-dlq" {
  name                       = "payment-order-create-dlq"
  message_retention_seconds  = 1209600
  max_message_size           = 262144
}

resource "aws_sqs_queue" "order-status-update-dlq" {
  name                       = "order-status-update-dlq"
  message_retention_seconds  = 1209600
  max_message_size           = 262144
}

resource "aws_sqs_queue" "cook-order-create-dlq" {
  name                       = "cook-order-create-dlq"
  message_retention_seconds  = 1209600
  max_message_size           = 262144
}
