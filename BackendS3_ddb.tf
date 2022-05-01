resource "aws_s3_bucket" "terraform_state" {
    bucket = "pipelineproject2"
    versioning {
      enabled = true
    }
    server_side_encryption_configuration {
      rule {
          apply_server_side_encryption_by_default {
            sse_algorithm = "AES256"
          }
      }
    }
  
}

resource "aws_dynamodb_table" "state_locks" {
    name = "iacdevops-prod-tfstate"
    billing_mode = "PAY_PER_REQUEST"
    hash_key = "LockID"
    attribute {
      name = "LockID"
      type = "S"
    }
}