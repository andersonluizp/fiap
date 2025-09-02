# Criar instância Oracle Linux
resource "oci_core_instance" "ol_instance" {
  availability_domain = "eLWz:SA-VINHEDO-1-AD-1"
  compartment_id      = var.compartment_id
  shape               = "VM.Standard.E2.1.Micro"

  source_details {
    source_type = "image"
    source_id   = "ocid1.image.oc1.sa-vinhedo-1.aaaaaaaafblfbpvvzg5bd6qx3wwpbbl5fscos2wn3nd3u452fslwh2tmu5qq"
  }

  create_vnic_details {
    subnet_id        = var.subnet_id
    assign_public_ip = true
  }

  metadata = {
    ssh_authorized_keys = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQDTHhlBDalsNiLa45rgeorCKGKc3VwgcVXgwsnzxfLgidDssZKeYWSJBJ4x08pHsaWyD8kNqw+WDU9cpcgnWXQ/NEmxUYP97+6D9azgEBFLfTN8Ro78zJbWgcOSBwjbvyWIS8ZoxRDgINNv6PbzuNpp0h9gY2Ysf4xEnoGWAH7liemncPwjFsk3S6HAjjBuTu8RzyxZn1zpB1HJ2/XSVxFFpiis15hWRDu2qjdbh53sIo0CTR5DdJQfgq+KCauCpLqrgg4ixzQsl6QaiZYgejeftadKDeHEYc/FLfHaRzngaz4oTzNlS12embFZYoJPvKpcxiJxvt1mIrvK7f3slKmX7zA5ehbxZEpQLLWPP4DOkDHtMqmIOoYa3noStMgunxso/k8Vnhg8lA+JVoOUxgaE6zUXPTNGi3rnhoEuLJsqjXj920uCRFf28Hy2/R5gHgb65nUiKOEzpnde64h8wQ0n7hgF5JwUaD6J1MZNSQKMcuzahUEWSfUaqgh9E+BM/KU= anderson@NotebookAndersonPancheniak"
  }

  display_name = var.display_name
}

# Pegar a imagem mais recente do Oracle Linux
data "oci_core_images" "oracle_linux" {
  compartment_id           = var.compartment_id
  operating_system         = "Oracle Linux"
  operating_system_version = "8" # ou "8" se preferir
  shape                    = "VM.Standard.E2.1.Micro"

  sort_by    = "TIMECREATED"
  sort_order = "DESC"
}
