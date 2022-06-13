
variable "AAD_TENANT_ID" {
    type = string
}
variable "organization" {}
variable "client_secret" {
    sensitive = true
}
variable "client_id" {}

terraform {
    required_version = ">=1"

    cloud {
        organization = "add-smart"
        workspaces {
            name = "CABestPractice-terraform"
        }
    }

    required_providers {
      azuread = {
          source = "hashicorp/azuread"
          version = "2.22.0"
      }
    }
}


provider "azuread" {
    client_id = var.client_id
    client_secret = var.client_secret
    tenant_id = var.AAD_TENANT_ID
}

