locals {

  common_tags = {

    ManagedBy  = "Terraform"
    Environment = var.environment
    Project     = var.project_name
    Owner       = var.owner
    CostCenter  = var.cost_center

  }

  default_vm_size = "Standard_B2s"

}
