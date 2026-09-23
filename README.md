# orl-s3-bucket-cleanup

A Terraform utility developed for OnRequestLab to efficiently empty existing Amazon S3 buckets using the AWS CLI via `local-exec` provisioners.

## Prerequisites

Before running this automation, ensure you have the following installed and configured on your local machine:
* **Terraform:** [Download and install](https://developer.hashicorp.com/terraform/downloads)
* **AWS CLI:** [Download and install](https://aws.amazon.com/cli/)
* **AWS Credentials:** You must have your AWS access keys configured (e.g., via `aws configure`) with sufficient permissions to execute `s3 rm` on the target bucket.

## Usage

1. **Initialize Terraform:**
   Initialize the working directory containing the Terraform configuration files.
   ```bash
   terraform init

2. Execute the Cleanup:
Run the apply command, passing the name of the S3 bucket you wish to empty as a variable.

Bash
terraform apply -var="bucket_name=your-target-bucket-name"

⚠️ WARNING: This operation is highly destructive. The AWS CLI command --recursive will permanently delete all objects and folders within the specified S3 bucket. Double-check your bucket name before typing yes at the Terraform prompt.

Maintainer
Developed by Nitesh for OnRequestLab.
