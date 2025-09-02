terraform {
  source = "../../modules//oci_core_subnet"
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

dependency "oci_core_security_list" {
  config_path = "../oci_core_security_list"
}

dependency "oci_core_route_table" {
  config_path = "../oci_core_route_table"
}

inputs = {
  compartment_id                    = dependency.oci_identity_compartment.outputs.oci_identity_compartment_this
  vcn_id                            = dependency.oci_core_virtual_network.outputs.oci_core_virtual_network_this
  default_seclist                   = "ocid1.securitylist.oc1.sa-vinhedo-1.aaaaaaaaqworwwynzjossmjyhliehlkehsb2bphge4eddobhslb7qbpmi7sq"
  sub_priv_oke_nodes_route_table_id = dependency.oci_core_route_table.outputs.oci_core_route_table_this
  network_cidr_blocks               = ["10.10.0.0/24", "10.10.1.0/28", "10.10.2.0/24", "10.10.3.0/24", "10.10.4.0/22", "10.10.8.0/22"]
}