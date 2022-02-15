// Create a HashiCorp Virtual Network (HVN).
resource "hcp_hvn" "eks_hvn" {
  hvn_id         = var.hvn_id
  cloud_provider = "aws"
  region         = var.aws_region
  cidr_block     = var.hvn_cidr_block
}

resource "hcp_vault_cluster" "hcp_vault" {
    cluster_id      = var.vault_cluster_id
    hvn_id          = hcp_hvn.eks_hvn.hvn_id
    public_endpoint = var.vault_set_public_endpoint
    tier            = var.vault_tier
}