resource "oci_core_virtual_network" "this" {
  cidr_block               = var.network_cidr_block
  compartment_id           = var.compartment_id
  display_name             = var.display_name
  dns_label                = ""
}