
resource "oci_core_route_table" "this" {
  compartment_id = var.compartment_id
  display_name   = var.display_name
  vcn_id         = var.vcn_id  
  route_rules {
    description       = "traffic to the internet"
    destination       = "0.0.0.0/0"
    destination_type  = "CIDR_BLOCK"
    network_entity_id = var.ngw_network_entity_id
  }
}