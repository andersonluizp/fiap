terraform {
  source = "../../modules//oci_core_virtual_network"
}

include "root" {
  path = find_in_parent_folders()
}

dependency "oci_identity_compartment" {
  config_path = "../oci_identity_compartment"
}

inputs = {
  compartment_id      = dependency.oci_identity_compartment.outputs.oci_identity_compartment_this
  network_cidr_block = "10.10.0.0/16"
  display_name        = "main"
}