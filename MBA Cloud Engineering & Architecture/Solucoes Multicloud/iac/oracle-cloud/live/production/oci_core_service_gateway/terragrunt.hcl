terraform {
  source = "../../modules//oci_core_service_gateway"
}

include "root" {
  path = find_in_parent_folders()
}

dependency "oci_identity_compartment" {
  config_path = "../oci_identity_compartment"
}

dependency "oci_core_virtual_network" {
  config_path = "../oci_core_virtual_network"
}

inputs = {
  compartment_id = dependency.oci_identity_compartment.outputs.oci_identity_compartment_this
  vcn_id         = dependency.oci_core_virtual_network.outputs.oci_core_virtual_network_this
  display_name   = "sgw_production"
}

