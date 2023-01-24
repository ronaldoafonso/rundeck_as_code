
variable "project_name" {
  description = "Project Name"
  type        = string
}

variable "rundeck_url" {
  description = "Rundeck URL"
  type        = string
}

variable "rundeck_api_version" {
  description = "Rundeck API Version"
  type        = string
}

variable "rundeck_token" {
  description = "Rundeck Admin Token"
  type        = string
}

variable "aws_region" {
  description = "AWS Region"
  type        = string
}

variable "jobs" {
  description = "Rundeck Jobs"
  type        = map(any)
}

variable "keys" {
  description = "Rundeck SSH keys"
  type        = map(any)
}
