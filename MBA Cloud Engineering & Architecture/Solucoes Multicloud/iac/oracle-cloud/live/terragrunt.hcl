generate "provider" {
  path      = "provider.tf"
  if_exists = "overwrite_terragrunt"
  contents  = <<EOF
   terraform {
      required_providers {
        oci = {
          source = "oracle/oci"
          version = "~> 7.16.0"
        }
      }
      backend "s3" {
        endpoint  = "https://axpamngzly4l.compat.objectstorage.sa-vinhedo-1.oraclecloud.com"
        region    = "sa-vinhedo-1"
        bucket    = "rm358342"
        key       = "iac/${path_relative_to_include()}/terraform.tfstate"

        shared_credentials_file     = "/root/solucoes-multicloud/iac/oracle-cloud/config/oci/config"
        skip_region_validation      = true
        skip_credentials_validation = true
        skip_metadata_api_check     = true
        force_path_style            = true
      }
    }
    variable "tenancy_ocid" {
      default = ""
    }
    variable "user_ocid" {
      default = ""
    }
    variable "fingerprint" {
      default = ""
    }
    variable "private_key_path" {
      default = "/root/solucoes-multicloud/iac/oracle-cloud/config/oci/rm358342@fiap.com.br-2025-09-01T15_06_50.045Z.pem"
    }
    variable "region" {
      default = "sa-vinhedo-1"
    }
    provider "oci" {
      user_ocid        = var.user_ocid
      fingerprint      = var.fingerprint
      private_key_path = var.private_key_path
      tenancy_ocid     = var.tenancy_ocid
      region           = var.region
    }
EOF
}
