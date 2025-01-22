terraform {
  required_providers {
    github = {
      source  = "integrations/github"
      version = "~> 6.0"
    }
  }
}

provider "github" {
  token = ""
}

resource "github_repository" "repo1" {
  name        = "iacdeployedrepo"
  description = "web development"
  visibility = "public"

}
