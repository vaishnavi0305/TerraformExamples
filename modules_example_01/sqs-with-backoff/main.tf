resource "aws_sqs_queue" "sqs" {
	name = "vaish_co-${var.queue_name}"
	visibility_timeout_seconds = var.visibility_timeout
	delay_seconds = 0
	max_message_size = 261144
	message_retention_seconds = 345600
	receive_wait_time_seconds = 20
	redrive_policy = "{\"deadLetterTargetArn\": \"${aws_sqs_queue.sqs_dead_letter.arn}\", \"maxReceiveCount\": ${var.max_receive_count}}"
}

resource "aws_sqs_queue" "sqs_dead_letter" {
	name = "vaish_co-${var.queue_name}-dead-letter"
	delay_seconds = 0
	max_message_size = 261144
	message_retention_seconds = 1209600
	receive_wait_time_seconds = 20
}
