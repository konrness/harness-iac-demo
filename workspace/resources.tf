// Define the resources to create
// Provisions the following into Harness: 
//    Code Repo, IaCM Workspace
resource "harness_platform_repo" "demo" {
  identifier     = var.new_repo_id
  org_id         = var.org_id
  project_id     = var.project_id
  default_branch = "main"
  source {
    repo = var.github_repo_to_clone
    type = "github"
  }
}

resource "harness_platform_workspace" "demo" {
  name                    = var.workspace_name
  identifier              = var.workspace_name
  org_id                  = var.org_id
  project_id              = var.project_id
  provisioner_type        = "opentofu"
  provisioner_version     = "1.8.1"
  repository_connector    = var.repository_connector
  repository              = var.repository_name
  repository_branch       = var.repository_branch
  repository_path         = var.repository_path
  cost_estimation_enabled = true
  provider_connector      = var.workspace_provider_connector
  

  terraform_variable {
    key        = "instance_type"
    value      = var.instance_type
    value_type = "string"
  }
}