// Define Valid Variables

// Platform
variable "account_id" {
  type = string
}

variable "org_id" {
  type = string
}

variable "project_id" {
  type = string
}

variable "api_key" {
  type      = string
  sensitive = true
}

// Workspace
variable "workspace_name" {
  type = string
}

variable "workspace_provider_connector" {
  type = string
}

variable "instance_type" {
  type = string
}

// Repo
variable "repository_id" {
  type = string
}

variable "repository_branch" {
  type = string
}

variable "repository_path" {
  type = string
}
