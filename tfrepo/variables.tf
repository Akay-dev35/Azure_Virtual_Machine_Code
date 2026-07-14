variable "subscription_id" {

  type        = string
  description = "Azure Subscription ID"

}

variable "environment" {

  type        = string
  description = "Deployment Environment"

  default = "dev"

}

variable "project_name" {

  type = string

}

variable "owner" {

  type = string

}

variable "cost_center" {

  type = string

}

variable "virtual_machines" {

  description = "Collection of Azure Virtual Machines"

  type = map(object({

    name = string

    location = string

    resource_group_name = string

    vm_size = optional(string)

    admin_username = string

    admin_password = optional(string)

    network_interface_ids = list(string)

    image = object({

      publisher = string
      offer      = string
      sku        = string
      version    = string

    })

    os_disk = object({

      caching = string

      storage_account_type = string

      disk_size_gb = optional(number)

    })

    zone = optional(string)

    tags = optional(map(string), {})

    identity = optional(object({

      type = string

    }))

    boot_diagnostics = optional(object({

      storage_account_uri = string

    }))

  }))

}
