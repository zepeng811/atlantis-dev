terraform {
  required_providers {
    github = {
      source  = "integrations/github"
      version = "~> 4.0"
    }
  }
}

# Configure the GitHub Provider
provider "github" {}

resource "github_branch" "branch" {
    repository = "atlantis-dev"
    branch = "tf-branch-3"
    source_branch = "master"
}