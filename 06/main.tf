terraform {
    required_providers {
      aws = {
        source = "hashicorp/aws"
        version = "~> 3.0"
      }
    }
}

provider "aws" {
    region = "eu-south-2"
}

variable "database_password" {
  description = "Password for the database"
  type = string
  sensitive = true
}

module "web_app_1" {
  source = "./app-module"

  server_count = 4
  database_name = "defaultdb1"
  database_user = "defaultdbuser1"
  database_password = var.database_password
  s3_bucket_name = "mi-nombre-de-bucket-1-alraro"
  app-name = "app-one"
}

module "web_app_2" {
  source = "./app-module"

  server_count = 3
  database_name = "defaultdb2"
  database_user = "defaultdbuser2"
  database_password = var.database_password
  s3_bucket_name = "mi-nombre-de-bucket-2-alraro"
  app-name = "app-two"
}
