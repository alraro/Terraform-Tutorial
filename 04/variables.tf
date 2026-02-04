variable "ami" {
  description = "Amazon machine image to use for ec2 instance"
  type        = string
  default     = "ami-0f927c75a054d665b" # ubuntu 22.04 // eu-south-2
}

variable "instance_type" {
  description = "Instance type to use for ec2 instance"
  type        = string
  default     = "t3.micro"
}

variable "s3_bucket_name" {
  description = "The S3 bucket name"
  type        = string
}

variable "database_name" {
  description = "Name of the database"
  type        = string
}

variable "database_user" {
  description = "Database default user"
  type        = string
}

variable "database_password" {
  description = "Database default user's password"
  type        = string
  sensitive   = true
}
