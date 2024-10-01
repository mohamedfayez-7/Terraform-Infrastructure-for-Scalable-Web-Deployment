terraform {
  backend "s3" {
    bucket         = "terraform-statefile-7"
    key            = "tfstate"
    region         = "us-east-1"
    dynamodb_table = "tf-lock-state"
  }
}