variable "bucket_name" {
	description = "Name of the existing S3 bucket to empty"
	type        = string
}

resource "terraform_data" "empty_s3_bucket" {
	input = var.bucket_name

	provisioner "local-exec" {
		command = "aws s3 rm s3://${var.bucket_name} --recursive"
	}
}
