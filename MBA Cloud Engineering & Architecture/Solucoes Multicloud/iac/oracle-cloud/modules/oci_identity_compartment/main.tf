resource "oci_identity_compartment" "this" {
  compartment_id = var.compartment_id
  name           = var.compartment_name
  description    = var.compartment_description
}