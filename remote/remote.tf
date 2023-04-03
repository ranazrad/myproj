resource "aws_s3_bucket" "tf-state-storage" {
    bucket = "mybucket-terraform-state-storage"
    versioning {
      enabled = true
    }
    lifecycle {
      prevent_destroy = true
    }
}
# create a dynamodb table for locking the state file
resource "aws_dynamodb_table" "dynamodb-terraform-state-lock" {
  name = "terraform-state-lock"
  hash_key = "LockID"
  read_capacity = 20
  write_capacity = 20
attribute {
    name = "LockID"
    type = "S"
  }
}
