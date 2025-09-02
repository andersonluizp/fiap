terraform {
  source = "../../modules//oci_core_instance"
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

dependency "oci_core_virtual_subnet" {
  config_path = "../oci_core_subnet"
}

inputs = {
  compartment_id      = dependency.oci_identity_compartment.outputs.oci_identity_compartment_this
  vcn_id              = dependency.oci_core_virtual_network.outputs.oci_core_virtual_network_this
  subnet_id           = dependency.oci_core_virtual_subnet.outputs.oci_core_subnet_sub_pub_oke_lb
  availability_domain = "eLWz:SA-VINHEDO-1-AD-1"
  shape               = "VM.Standard.E2.1.Micro"
  source_id           = "ocid1.image.oc1.sa-vinhedo-1.aaaaaaaafblfbpvvzg5bd6qx3wwpbbl5fscos2wn3nd3u452fslwh2tmu5qq"
  ssh_authorized_keys = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQDTHhlBDalsNiLa45rgeorCKGKc3VwgcVXgwsnzxfLgidDssZKeYWSJBJ4x08pHsaWyD8kNqw+WDU9cpcgnWXQ/NEmxUYP97+6D9azgEBFLfTN8Ro78zJbWgcOSBwjbvyWIS8ZoxRDgINNv6PbzuNpp0h9gY2Ysf4xEnoGWAH7liemncPwjFsk3S6HAjjBuTu8RzyxZn1zpB1HJ2/XSVxFFpiis15hWRDu2qjdbh53sIo0CTR5DdJQfgq+KCauCpLqrgg4ixzQsl6QaiZYgejeftadKDeHEYc/FLfHaRzngaz4oTzNlS12embFZYoJPvKpcxiJxvt1mIrvK7f3slKmX7zA5ehbxZEpQLLWPP4DOkDHtMqmIOoYa3noStMgunxso/k8Vnhg8lA+JVoOUxgaE6zUXPTNGi3rnhoEuLJsqjXj920uCRFf28Hy2/R5gHgb65nUiKOEzpnde64h8wQ0n7hgF5JwUaD6J1MZNSQKMcuzahUEWSfUaqgh9E+BM/KU= anderson@NotebookAndersonPancheniak"
  display_name        = "oracle-linux8"
}
