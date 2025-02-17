resource "aws_sqs_queue" "order-product-create-queue" {
  name                       = "order-product-create-queue"
  visibility_timeout_seconds = 30
  message_retention_seconds  = 86400
  delay_seconds              = 0
  max_message_size           = 262144
  receive_wait_time_seconds  = 0

  redrive_policy = jsonencode({
    deadLetterTargetArn = aws_sqs_queue.order-product-create-dlq.arn
    maxReceiveCount     = 5
  })

  depends_on = [aws_sqs_queue.order-product-create-dlq]
}

resource "aws_sqs_queue" "order-product-delete-queue" {
  name                       = "order-product-delete-queue"
  visibility_timeout_seconds = 30
  message_retention_seconds  = 86400
  delay_seconds              = 0
  max_message_size           = 262144
  receive_wait_time_seconds  = 0

  redrive_policy = jsonencode({
    deadLetterTargetArn = aws_sqs_queue.order-product-delete-dlq.arn
    maxReceiveCount     = 5
  })

  depends_on = [aws_sqs_queue.order-product-delete-dlq]
}

resource "aws_sqs_queue" "order-product-update-queue" {
  name                       = "order-product-update-queue"
  visibility_timeout_seconds = 30
  message_retention_seconds  = 86400
  delay_seconds              = 0
  max_message_size           = 262144
  receive_wait_time_seconds  = 0

  redrive_policy = jsonencode({
    deadLetterTargetArn = aws_sqs_queue.order-product-update-dlq.arn
    maxReceiveCount     = 5
  })

  depends_on = [aws_sqs_queue.order-product-update-dlq]
}

resource "aws_sqs_queue" "payment-order-create-queue" {
  name                       = "payment-order-create-queue"
  visibility_timeout_seconds = 30
  message_retention_seconds  = 86400
  delay_seconds              = 0
  max_message_size           = 262144
  receive_wait_time_seconds  = 0

  redrive_policy = jsonencode({
    deadLetterTargetArn = aws_sqs_queue.payment-order-create-dlq.arn
    maxReceiveCount     = 5
  })

  depends_on = [aws_sqs_queue.payment-order-create-dlq]
}

resource "aws_sqs_queue" "order-status-update-queue" {
  name                       = "order-status-update-queue"
  visibility_timeout_seconds = 30
  message_retention_seconds  = 86400
  delay_seconds              = 0
  max_message_size           = 262144
  receive_wait_time_seconds  = 0

  redrive_policy = jsonencode({
    deadLetterTargetArn = aws_sqs_queue.order-status-update-dlq.arn
    maxReceiveCount     = 5
  })

  depends_on = [aws_sqs_queue.order-status-update-dlq]
}

resource "aws_sqs_queue" "cook-order-create-queue" {
  name                       = "cook-order-create-queue"
  visibility_timeout_seconds = 30
  message_retention_seconds  = 86400
  delay_seconds              = 0
  max_message_size           = 262144
  receive_wait_time_seconds  = 0

  redrive_policy = jsonencode({
    deadLetterTargetArn = aws_sqs_queue.cook-order-create-dlq.arn
    maxReceiveCount     = 5
  })

  depends_on = [aws_sqs_queue.cook-order-create-dlq]
}
