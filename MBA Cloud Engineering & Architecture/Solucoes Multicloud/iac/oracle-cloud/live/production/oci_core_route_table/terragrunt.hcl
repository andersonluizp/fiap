terraform {
  source = "../../modules//oci_core_route_table"
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

dependency "oci_core_internet_gateway" {
  config_path = "../oci_core_internet_gateway"
}

dependency "oci_core_nat_gateway" {
  config_path = "../oci_core_nat_gateway"
}

dependency "oci_core_service_gateway" {
  config_path = "../oci_core_service_gateway"
}

inputs = {
  compartment_id        = dependency.oci_identity_compartment.outputs.oci_identity_compartment_this
  display_name          = "main"
  vcn_id                = dependency.oci_core_virtual_network.outputs.oci_core_virtual_network_this
  igw_network_entity_id = dependency.oci_core_internet_gateway.outputs.oci_core_internet_gateway_this
  ngw_network_entity_id = dependency.oci_core_nat_gateway.outputs.oci_core_nat_gateway_this
  sgw_network_entity_id = dependency.oci_core_service_gateway.outputs.oci_core_service_gateway_this
}
