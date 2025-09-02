resource "oci_core_subnet" "sub_pub_oke_lb" {
  cidr_block        = var.network_cidr_blocks[0]
  compartment_id    = var.compartment_id
  display_name      = "sub_pub_oke_lb"
  security_list_ids = [var.default_seclist,]  
  vcn_id            = var.vcn_id
}

resource "oci_core_subnet" "sub_priv_oke_api" {
  cidr_block                 = var.network_cidr_blocks[1]
  compartment_id             = var.compartment_id
  display_name               = "sub_priv_oke_api"
  vcn_id                     = var.vcn_id
  security_list_ids          = [var.default_seclist,] 
}

resource "oci_core_subnet" "sub_priv_internal_endpoints" {
  cidr_block                 = var.network_cidr_blocks[2]
  compartment_id             = var.compartment_id
  display_name               = "sub_priv_internal_endpoints"
  prohibit_public_ip_on_vnic = "true"
  vcn_id                     = var.vcn_id
}

resource "oci_core_subnet" "sub_priv_databases" {
  cidr_block                 = var.network_cidr_blocks[3]
  compartment_id             = var.compartment_id
  display_name               = "sub_priv_databases"
  prohibit_public_ip_on_vnic = "true"
  vcn_id                     = var.vcn_id
}

resource "oci_core_subnet" "sub_priv_network_storages" {
  cidr_block                 = var.network_cidr_blocks[4]
  compartment_id             = var.compartment_id
  display_name               = "sub_priv_network_storages"
  prohibit_public_ip_on_vnic = "true"
  vcn_id                     = var.vcn_id
}

resource "oci_core_subnet" "sub_priv_oke_nodes" {
  cidr_block                 = var.network_cidr_blocks[5]
  compartment_id             = var.compartment_id
  display_name               = "sub_priv_oke_nodes"
  prohibit_public_ip_on_vnic = "true"
  vcn_id                     = var.vcn_id
  security_list_ids          = [var.default_seclist,] 
  route_table_id             = var.sub_priv_oke_nodes_route_table_id
}