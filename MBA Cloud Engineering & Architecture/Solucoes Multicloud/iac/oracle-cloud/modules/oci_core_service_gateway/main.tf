data "oci_core_services" "test_services" {
}

resource "oci_core_service_gateway" "this" {
  compartment_id = var.compartment_id
  display_name   = var.display_name
  vcn_id         = var.vcn_id
  services {
    service_id = data.oci_core_services.test_services.services.0.id
  }
}