
resource "oci_core_security_list" "this" {
  compartment_id = var.compartment_id
  display_name   = var.display_name
  vcn_id         = var.vcn_id


  # IP específico - Porta 80
  ingress_security_rules {
    description = "Allow 0.0.0.0 access on port 80"
    protocol    = "6"
    source      = "0.0.0.0/0"
    source_type = "CIDR_BLOCK"
    stateless   = false

    tcp_options {
      min = 80
      max = 80
    }
  }

  # IP específico - Porta 22
  ingress_security_rules {
    description = "Allow 0.0.0.0/0 access on port 22"
    protocol    = "6"
    source      = "0.0.0.0/0"
    source_type = "CIDR_BLOCK"
    stateless   = false

    tcp_options {
      min = 22
      max = 22
    }
  }

  # IP específico - Porta 443
  ingress_security_rules {
    description = "Allow 0.0.0.0 access on port 443"
    protocol    = "6"
    source      = "0.0.0.0/0"
    source_type = "CIDR_BLOCK"
    stateless   = false

    tcp_options {
      min = 443
      max = 443
    }
  }
  
}
