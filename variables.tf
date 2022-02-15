variable "aws_region" {
    type = string
    description = "Location of the Region to deploy"
    default = "eu-west-2"
}

variable "hvn_id" {
    type = string
    description = "Name of the hvn"
    default = "eks-hcp-hvn"
}

variable "vault_cluster_id" {
    type        = string
    description = "Vault Cluster name"
    default     = "HCP-Vault-EKS"
}

variable "vault_tier" {
    type        = string
    description = "Vault Tier, can be dev, standard_small, standard_medium, standard_large, starter_small"
    default     = "dev"
}

variable "vault_set_public_endpoint" {
    type        = string
    description = "Set public endpoint for vault cluster"
    default     = true
}