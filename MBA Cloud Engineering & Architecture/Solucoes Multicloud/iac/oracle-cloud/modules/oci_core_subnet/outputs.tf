output "oci_core_subnet_sub_pub_oke_lb" {
    description = ""
    value       = oci_core_subnet.sub_pub_oke_lb.id
}

output "oci_core_subnet_sub_priv_oke_api" {
    description = ""
    value       = oci_core_subnet.sub_priv_oke_api.id
}

output "oci_core_subnet_sub_priv_oke_nodes" {
    description = ""
    value       = oci_core_subnet.sub_priv_oke_nodes.id
}

output "oci_core_subnet_sub_priv_internal_endpoints" {
    description = ""
    value       = oci_core_subnet.sub_priv_internal_endpoints.id
}

output "oci_core_subnet_sub_priv_network_storages" {
    description = ""
    value       = oci_core_subnet.sub_priv_network_storages.id
}

output "oci_core_subnet_sub_priv_databases" {
    description = ""
    value       = oci_core_subnet.sub_priv_databases.id
}