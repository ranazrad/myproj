terraform {
  backend "s3" {
    encrypt=true
    bucket = "mybucket-terraform-state-storage"
    dynamodb_table = "terraform-state-lock"
    key    = "state-lock-storage.keypath"
    region = "eu-west-1"
    access_key = ""
    secret_key = ""
  }
}
