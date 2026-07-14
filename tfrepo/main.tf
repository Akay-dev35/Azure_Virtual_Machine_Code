module "virtual_machine"{source="./modules/virtual-machine" for_each=var.virtual_machines vm=each.value common_tags={}}
