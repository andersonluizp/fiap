variable "network_cidr_blocks" {
  description = ""
  type        = list(string)
}

variable "compartment_id" {
  description = ""
  type        = string
}

variable "vcn_id" {
  description = ""
  type        = string
}

variable "sub_priv_oke_nodes_route_table_id" {
  description = ""
  type        = string
}

variable "default_seclist" {
  description = ""
  type        = string
}
