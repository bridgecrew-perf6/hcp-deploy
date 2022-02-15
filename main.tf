terraform {
    required_providers {
        hcp = {
            source  = "hashicorp/hcp"
            version = "~> 0.22.0"
        }
    }
    required_version = "~> 1.1.5"
}

provider "hcp" {}
