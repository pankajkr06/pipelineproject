resource "aws_dynamodb_table" "state_locks" {
    name = "iacdevops-prod-tfstate"
    billing_mode = "PAY_PER_REQUEST"
    hash_key = "LockID"
    attribute {
      name = "LockID"
      type = "S"
    }
}