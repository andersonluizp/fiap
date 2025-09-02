terraform {
  source = "../../modules//oci_identity_compartment"
}

include "root" {
  path = find_in_parent_folders()
}

inputs = {
  compartment_id          = "ocid1.tenancy.oc1..aaaaaaaabux3wghml46t4pc65sbzzqcipbkdr2dh62raqdiyl64ljxt3jl5q"
  compartment_name        = "production"
  compartment_description = "Production compartment"
}

